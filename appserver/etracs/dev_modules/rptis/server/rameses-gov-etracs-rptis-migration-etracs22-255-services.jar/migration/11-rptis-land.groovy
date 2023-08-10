import TestProxy;

def conf = [
    'app.host': 'localhost:8070',
    'app.cluster': 'osiris3',
    'app.context': 'etracs25',
]
def proxy = new TestProxy(conf);
def svc = proxy.create('ETRACS22To255FaasMigrationService');

svc.initMigrationTables();
svc.insertXFaasData();
svc.deleteXFaasMigratedData();

def MAX_COUNT = 10;
def count = MAX_COUNT;
def processed = 0;

while (count == MAX_COUNT) {
    count = svc.migrateFaasData([count: MAX_COUNT, rputype: 'land']);
    processed += count;
    println 'Records processed: ' + processed;
}

count = MAX_COUNT;
processed = 0;

while (count == MAX_COUNT) {
    count = svc.migratePreviousFaasData([count: MAX_COUNT, rputype: 'land']);
    processed += count;
    println 'Records processed: ' + processed;
}
