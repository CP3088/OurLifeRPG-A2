// Module Configuration Format
// ["module", "functionFile", "functionPrefix", false(exec)/true(call)]

DD_Modules = DD_Modules + [
	["inventory", "additem", "DD", true],
	["inventory", "getamount", "DD", true],
	["inventory", "info", "DD", true],
	["inventory", "calculateweight", "DD", true],
	["inventory", "addlicense", "DD", true],
	["inventory", "licenseinfo", "DD", true],
	["inventory", "licenseactions", "DD", false]
];