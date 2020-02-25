import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class JobTagBase {

//#region jobTagId Prop
        @prop()
        jobTagId : number;
//#endregion jobTagId Prop


//#region jobTagName Prop
        @required()
        @maxLength({value:50})
        jobTagName : string;
//#endregion jobTagName Prop



}