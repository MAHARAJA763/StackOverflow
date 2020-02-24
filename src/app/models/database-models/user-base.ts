import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class UserBase {

//#region userId Prop
        @prop()
        userId : number;
//#endregion userId Prop


//#region displayName Prop
        @required()
        @maxLength({value:30})
        displayName : string;
//#endregion displayName Prop


//#region email Prop
        @required()
        @maxLength({value:30})
        email : string;
//#endregion email Prop


//#region password Prop
        @required()
        @maxLength({value:20})
        password : string;
//#endregion password Prop











}