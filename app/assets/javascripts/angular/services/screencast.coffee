App.factory 'Screencast', ['$resource', ($resource) ->
  $resource '/api/screencasts/:id', id: '@id',{
  	'create': {method: 'post'}
  	'update':{method:'put'}
  	'destroy':{method:'delete'}
  }
  	
  
]