import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class JobLocationBase {

//#region jobLocationId Prop
        @prop()
        jobLocationId : number;
//#endregion jobLocationId Prop


//#region jobLocationName Prop
        @required()
        @maxLength({value:50})
        jobLocationName : string;
//#endregion jobLocationName Prop


//#region jobId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        jobId : number;
//#endregion jobId Prop



}