var BASE_URL = 'http://47.106.142.171:8080';

var MODULE_ADMIN = '/yuan-module-admin'

var USER_INFO = 'yuan_user_info'

var PRODUCT_URL = BASE_URL + '/yuan-module-interface/api/shopproduct/list';

var PRODUCT_DETAIL_URL = BASE_URL + '/yuan-module-interface/api/shopproduct/getDetail';

var ARTICLE_URL = BASE_URL + '/yuan-module-interface/cms/api/article/list';

var ARTICLE_DETAIL_URL = BASE_URL + '/yuan-module-interface/cms/api/article/detail';

var SHOPBILL_URL = BASE_URL + '/yuan-module-interface/api/shopbilltrade/list';

var SHOPBILL_TRAN = BASE_URL + '/yuan-module-interface/api/shopbilltrade/save';

var ORDER_URL = BASE_URL + '/yuan-module-interface/api/shoptrade/list';

var ORDER_CREATE_URL = BASE_URL + '/yuan-module-interface/api/shoptrade/save';

var ORDER_CONFIRM_URL = BASE_URL + '/yuan-module-interface/api/shoptrade/upd/status';

var CART_ADD_URL = BASE_URL + '/yuan-module-interface/api/shoptrade/addCart';

var CART_UPDATE_URL = BASE_URL + '/yuan-module-interface/api/shoptrade/updateCart';

var CART_LIST_URL = BASE_URL + '/yuan-module-interface/api/shoptrade/listCart';

var CART_REMOVE_URL = BASE_URL + '/yuan-module-interface/api/shoptrade/removeCart';

var SMS_CODE_URL = BASE_URL + '/yuan-module-interface/api/shopuser/sendSms';

var REGISTER_URL = BASE_URL + '/yuan-module-interface/api/shopuser/register';

var PHONE_VALIDATE_URL = BASE_URL + '/yuan-module-interface/api/shopuser/validator/phone';

var LOGIN_URL = BASE_URL + '/yuan-module-interface/api/shopuser/login';

var USER_UPDATE_URL = BASE_URL + '/yuan-module-interface/api/shopuser/update';

var USER_DETAIL_URL = BASE_URL + '/yuan-module-interface/api/shopuser/getDetail';

var USER_TEAM_URL = BASE_URL + '/yuan-module-interface/api/shopuser/getTeam';

var USER_INCOME_URL = BASE_URL + '/yuan-module-interface/api/shopuser/getIncome';

var UPDATE_LOGIN_PWD_URL = BASE_URL + '/yuan-module-interface/api/shopuser/update_pwd';

var RESET_LOGIN_PWD_URL = BASE_URL + '/yuan-module-interface/api/shopuser/reset/password';

var UPDATE_PAY_PWD_URL = BASE_URL + '/yuan-module-interface/api/shopuser/update_jypwd';

var RESET_PAY_PWD_URL = BASE_URL + '/yuan-module-interface/api/shopuser/reset/jiaoyimima';

var LOGOUT_URL = BASE_URL + '/yuan-module-interface/api/shopuser/login_out';

var USER_LEVELS = {
    "v1": "普通会员",
    "v2": "个人vip",
    "v3": "初级代理",
    "v4": "高级代理",
    "v5": "核心代理",
    "v6": "运营中心",
    "v7": "公司股东"
}

var INCOME = ['会员大礼包收益', '复购产品收益', '真推收益', '间推收益', '管理奖', '股份收益', '平台分红', '捐赠', '购买返点', '直推购买返点', '间推购买返点']

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
    var phoneExp = /^[1][3,4,5,7,8,9][0-9]{9}$/;
    return phoneExp.test(phone);
}