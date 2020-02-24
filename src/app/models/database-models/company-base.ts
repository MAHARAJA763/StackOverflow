import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class CompanyBase {

//#region companyId Prop
        @prop()
        companyId : number;
//#endregion companyId Prop


//#region companyName Prop
        @required()
        @maxLength({value:50})
        companyName : string;
//#endregion companyName Prop


//#region companyContact Prop
        @required()
        @maxLength({value:50})
        companyContact : string;
//#endregion companyContact Prop


//#region companyLocation Prop
        @required()
        @maxLength({value:50})
        companyLocation : string;
//#endregion companyLocation Prop



}