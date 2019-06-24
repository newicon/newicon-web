module.exports = function(nido, env){

	nido = nido('neon');

	nido.set('environments', {
		// param "namespace" not yet used but could use as the basis for most variables
		namespace:"NAMESPACE",

		// local development environment
		local: {
			env:'dev',
			debug:true,
			domain:'WEBSITE',
			deployPath: '~/Sites/WEBSITE',
			db: {
				database: 'NAMESPACE_dev',
				username: 'root',
				password: ''
			},
			gitBranch: "develop",
			siteName: "SITE TITLE",
		},

		// test environment if applicable
		test: {
			env:'test',
			debug:true,
			domain:'TEST_WEBSITE',
			server: 'TEST_SERVER',
			db: {
				database: 'NAMESPACE_test',
				username: 'TEST_USER',
				password: 'TEST_PASSWORD'
			},
			gitBranch: "staging",
			siteName: 'SITE TITLE - Test',
		},

		// staging environment
		staging: {
			env: 'prod',
			debug: false,
			domain:'staging.WEBSITE',
			server: 'STAGING_SERVER',
			db: {
				database: 'NAMESPACE_staging',
				username: 'STAGING_USER',
				password: 'STAGING_PASSWORD'
			},
			gitBranch: "staging",
			siteName: 'SITE TITLE - Staging',
		},

		// production environment
		production: {
			env: 'prod',
			debug: false,
			domain:'WEBSITE',
			server: 'PRODUCTION_SERVER',
			db: {
				database: 'NAMESPACE_production',
				username: 'PRODUCTION_USER',
				password: 'PRODUCTION WEBSITE'
			},
			gitBranch: "master",
			siteName: 'SITE TITLE',
		},
	});

	return nido;
}
