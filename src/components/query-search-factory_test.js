// Generated by LiveScript 1.3.1
(function(){
  describe('factory: f6aTwFrontend.querySearch', function(){
    var querySearch, $httpBackend;
    beforeEach(module('f6aTwFrontend'));
    querySearch = {};
    $httpBackend = void 8;
    beforeEach(inject(function(_querySearch_){
      querySearch = _querySearch_;
      return console.log('querySearch:', querySearch);
    }));
    beforeEach(inject(function(_$httpBackend_){
      $httpBackend = _$httpBackend_;
      return console.log('httpBackend:', $httpBackend);
    }));
    return it('should get data', function(){
      var result;
      $httpBackend.expect('GET', 'http://localhost/api/query?str=HYM').respond(200, {
        success: true,
        data: [{
          color: '',
          process_company_country: 'ITALY',
          customs_no: DHA01300348500,
          process_address: '20060 CASSINA DE PECCHI MILANO',
          formulation: '\u51cd\u6676\u6ce8\u5c04\u5291',
          package2: '\u5b89\u74ff\u9644\u6eb6\u6db2',
          valid_date: '1985-06-19',
          special: '',
          size: '',
          process_company: 'DERIVATI BIOLOGICI INTERNATIONAL S. P. A. MILANO',
          issue_date: '1970-06-19',
          mark: '',
          is_valid: '\u5df2\u8a3b\u92b7',
          old_permit: '17013667',
          usage: '',
          apply_id: '11037308',
          type: '\u9650\u7531\u91ab\u5e2b\u4f7f\u7528',
          main_gradient: 'CHYMOTRYPSIN ALPHA-',
          invalidate_reason: '\u81ea\u8acb\u8a3b\u92b7',
          en_name: 'ALFA-CHYMOCIN 5MG',
          apply_company: '\u5927\u6771\u4e9e\u8cbf\u6613\u6709\u9650\u516c\u53f8',
          apply_address: '\u53f0\u5317\u5dff\u6c11\u751f\u6771\u8def\uff12\u6bb5\uff11\uff17\uff14\u865f\uff12\u6a13',
          memo2: '',
          memo1: '',
          invalidate_date: '1985-06-28',
          intl_id: '',
          controlled_type: '',
          name: '\u9175\u65b0',
          'package': '\u5b89\u74ff\u9644\u6eb6\u6db2',
          insurance_id: '',
          smell: '',
          process_company_address: '',
          permit_type: '\u88fd\u3000\u5291',
          indication: '\u6d88\u816b',
          permit: '\u5167\u885b\u85e5\u8f38\u5b57\u7b2c003485\u865f',
          change_date: '2001-12-30',
          procedure: '',
          view: ''
        }]
      });
      result = querySearch.query('HYM');
      return expect(result.success).toBe(true);
    });
  });
}).call(this);