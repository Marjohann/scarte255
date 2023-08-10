import TestProxy;

def conf = [
    'app.host': 'localhost:8070',
    'app.cluster': 'osiris3',
    'app.context': 'etracs25',
]

def proxy = new TestProxy(conf);

/* USERS */
println 'Migrating users'
def svc = proxy.create('ETRACS22To255AdminMigrationService');
svc.migrateUsers();

/* ORGS */
println 'Migrating orgs'
svc = proxy.create('ETRACS22To255MasterMigrationService');
svc.migrateOrg([orgclass: 'municipality']);

/* TREASURY */
println 'Migrating treasury'
svc = proxy.create('ETRACS22To255TreasuryMigrationService');
svc.migrateFunds();
svc.migrateItemAccounts();




/* ASSESSOR  SETTINGS */
println 'Migrating assessor settings'
svc = proxy.create('ETRACS22To255MasterMigrationService');
svc.createMigrationRefTables();
svc.migratePropertyClassifications();
svc.migrateExemptionTypes();
svc.migrateCancelTDReasons();
svc.migrateBldgKinds();
svc.migrateMaterials();
svc.migrateStructures();
svc.migrateMachines();
svc.migratePlantTrees();
svc.migrateMiscItems();
svc.migrateRPTParameters();

svc = proxy.create('ETRACS22To255SettingMigrationService');
def lgu = [lgutype: 'municipality']
svc.migrateLandSettings(lgu);
svc.migrateLandAssessLevels(  );
svc.migrateSpecificClasses(  );
svc.migrateStrippings(  );
svc.migrateLandAdjustments(  );
svc.migrateBldgSettings(lgu);
svc.migrateBldgAssessLevels(  );
svc.migrateBldgTypes();
svc.migrateBldgAdditionalItems();
svc.migrateMachSettings(lgu);
svc.migrateMachAssessLevels(  );
svc.migrateMachForexes();
svc.migratePlantTreeSettings(lgu);
svc.migratePlantTreeUnitValues();
svc.migrateMiscSettings(lgu);
svc.migrateMiscAssessLevels(  );
svc.migrateMiscItemUnitValues();
svc.migrateLguRySettings(lgu);


/* ASSESSOR - LAND */
println 'Migrating land FAAS'
svc = proxy.create('ETRACS22To255FaasMigrationService');

svc.initMigrationTables();
svc.insertXFaasData();
svc.deleteXFaasMigratedData();

def MAX_COUNT = 25;
def count = MAX_COUNT;
def processed = 0;

while (count == MAX_COUNT) {
    count = svc.migrateFaasData([count: MAX_COUNT, rputype: 'land']);
    processed += count;
    println 'Records processed: ' + processed;
}



/* ASSESSOR - BLDG */
println 'Migrating building FAAS'

count = MAX_COUNT;
processed = 0;

while (count == MAX_COUNT) {
    count = svc.migrateFaasData([count: MAX_COUNT, rputype: 'bldg']);
    processed += count;
    println 'Records processed: ' + processed;
}


/* ASSESSOR - MACH */
println 'Migrating machinery FAAS'

count = MAX_COUNT;
processed = 0;

while (count == MAX_COUNT) {
    count = svc.migrateFaasData([count: MAX_COUNT, rputype: 'mach']);
    processed += count;
    println 'Records processed: ' + processed;
}


/* ASSESSOR - PLANTTREE */

/* ASSESSOR - MISC  */


/* SUPERSEDED FAAS  */
println 'Migrating previous FAAS information'

count = MAX_COUNT;
processed = 0;

while (count == MAX_COUNT) {
    count = svc.migratePreviousFaasData([count: MAX_COUNT]);
    processed += count;
    println 'Records processed: ' + processed;
}




/* LANDTAX LEDGER */
println 'Migrating Ledgers'
svc = proxy.create('ETRACS22To255LandTaxMigrationService');

svc.initMigrationTables();
svc.initPaymentMigrationTables();

count = MAX_COUNT;
processed = 0;

while (count == MAX_COUNT) {
    count = svc.migrateLedgers([count: MAX_COUNT]);
    processed += count;
    println 'Records processed: ' + processed;
}
 