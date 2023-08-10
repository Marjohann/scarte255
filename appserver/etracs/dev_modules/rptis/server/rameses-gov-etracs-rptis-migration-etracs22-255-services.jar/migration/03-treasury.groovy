import TestProxy;

def conf = [
    'app.host': 'localhost:8070',
    'app.cluster': 'osiris3',
    'app.context': 'etracs25',
]

def proxy = new TestProxy(conf);

def svc = proxy.create('ETRACS22To255TreasuryMigrationService');

svc.migrateFunds();
svc.migrateItemAccounts();
