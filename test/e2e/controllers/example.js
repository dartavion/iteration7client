var util = require('util');
describe('List', function(){
    var ptor;
    beforeEach(function() {
        ptor = protractor.getInstance();
        ptor.get('#/');
    });
    it('goes home', function(){
        ptor = protractor.getInstance();
        ptor.findElement(protractor.By.className('brand')).click();
        expect(ptor.getCurrentUrl()).toContain('#/');
    }, 10000);
});