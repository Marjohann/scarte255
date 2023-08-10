import TestProxy;

def conf = [
    'app.host': 'localhost:8070',
    'app.cluster': 'osiris3',
    'app.context': 'etracs25',
]

def proxy = new TestProxy(conf);

def svc = proxy.create('ETRACS22To255MasterMigrationService');
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