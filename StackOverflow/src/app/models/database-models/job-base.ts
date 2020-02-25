import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class JobBase {

//#region jobId Prop
        @prop()
        jobId : number;
//#endregion jobId Prop


//#region jobTitle Prop
        @required()
        jobTitle : string;
//#endregion jobTitle Prop


//#region jobDescription Prop
        @required()
        jobDescription : string;
//#endregion jobDescription Prop


//#region jobDesignation Prop
        @required()
        @maxLength({value:50})
        jobDesignation : string;
//#endregion jobDesignation Prop


//#region payScale Prop
        @required()
        @maxLength({value:50})
        payScale : string;
//#endregion payScale Prop


//#region jobType Prop
        @required()
        @maxLength({value:50})
        jobType : string;
//#endregion jobType Prop


//#region jobApplyLink Prop
        @required()
        @maxLength({value:50})
        jobApplyLink : string;
//#endregion jobApplyLink Prop


//#region companyId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        companyId : number;
//#endregion companyId Prop







}