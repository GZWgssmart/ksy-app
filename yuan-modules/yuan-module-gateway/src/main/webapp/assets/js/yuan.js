var BASE_URL = 'http://47.106.142.171:8080';

var MODULE_ADMIN = '/yuan-module-admin'

var PRODUCT_URL = BASE_URL + '/yuan-module-interface/shopproduct/list';

var PRODUCT_DETAIL_URL = BASE_URL + '/yuan-module-interface/shopproduct/getDetail';

var ARTICLE_URL = BASE_URL + '/yuan-module-interface/cms/api/article/list';

var ARTICLE_DETAIL_URL = BASE_URL + '/yuan-module-interface/cms/api/article/detail';

var SHOPBILL_URL = BASE_URL + '/yuan-module-interface/shopbilltrade/list';

var SHOPBILL_TRAN = BASE_URL + '/yuan-module-interface/shopbilltrade/save';

var ORDER_URL = BASE_URL + '/yuan-module-interface/shoptrade/list';

var ORDER_CREATE_URL = BASE_URL + '/yuan-module-interface/shoptrade/save';

var ORDER_CONFIRM_URL = BASE_URL + '/yuan-module-interface/shoptrade/upd/status';

var CART_ADD_URL = BASE_URL + '/yuan-module-interface/shoptrade/addCart';

var CART_UPDATE_URL = BASE_URL + '/yuan-module-interface/shoptrade/updateCart';

var CART_LIST_URL = BASE_URL + '/yuan-module-interface/shoptrade/listCart';

var CART_REMOVE_URL = BASE_URL + '/yuan-module-interface/shoptrade/removeCart';

var SMS_CODE_URL = BASE_URL + '/yuan-module-interface/shopuser/sendSms';

var REGISTER_URL = BASE_URL + '/yuan-module-interface/shopuser/register';

var PHONE_VALIDATE_URL = BASE_URL + '/yuan-module-interface/shopuser/validator/phone';

var LOGIN_URL = BASE_URL + '/yuan-module-interface/shopuser/login';

var USER_UPDATE_URL = BASE_URL + '/yuan-module-interface/shopuser/update';

var USER_DETAIL_URL = BASE_URL + '/yuan-module-interface/shopuser/getDetail';

var USER_TEAM_URL = BASE_URL + '/yuan-module-interface/shopuser/getTeam';

var USER_INCOME_URL = BASE_URL + '/yuan-module-interface/shopuser/getIncome';

var UPDATE_LOGIN_PWD_URL = BASE_URL + '/yuan-module-interface/shopuser/update_pwd';

var RESET_LOGIN_PWD_URL = BASE_URL + '/yuan-module-interface/shopuser/reset/password';

var UPDATE_PAY_PWD_URL = BASE_URL + '/yuan-module-interface/shopuser/update_jypwd';

var RESET_PAY_PWD_URL = BASE_URL + '/yuan-module-interface/shopuser/reset/jiaoyimima';

var LOGOUT_URL = BASE_URL + '/yuan-module-interface/shopuser/login_out';

function timestampToDatetime(value) {
    if (value === undefined || value === null || value === '') {
        return '-';
    } else {
        var currDate = new Date(value);
        var year = currDate.getFullYear();
        var month = currDate.getMonth() + 1;
        var day = currDate.getDate();
        var hour = currDate.getHours();
        var minute = currDate.getMinutes();
        var second = currDate.getSeconds();
        month = month < 10 ? '0' + month : month;
        day = day < 10 ? '0' + day : day;
        hour = hour < 10 ? '0' + hour : hour;
        minute = minute < 10 ? '0' + minute : minute;
        second = second < 10 ? '0' + second : second;
        return year + '-' + month + '-' + day + ' ' + hour + ':' + minute + ':' + second;
    }
}

function isPhone(phone) {
    var phoneExp = /^[1][3,4,5,7,8][0-9]{9}$/;
    return phoneExp.test(phone);
}