function fn() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'hello karate',
    baseUrl: 'https://simple-books-api.glitch.me',
    authToken: 'b0528a72038648bd071b441b21f63e1882909cf5adce9e452c502c03f3586f26'

  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}