import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class PivilegeBase {

//#region privilegeId Prop
        @prop()
        privilegeId : number;
//#endregion privilegeId Prop


//#region privilegeName Prop
        @required()
        @maxLength({value:50})
        privilegeName : string;
//#endregion privilegeName Prop


//#region privilegeTypeId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        privilegeTypeId : number;
//#endregion privilegeTypeId Prop


//#region requiredReputation Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        requiredReputation : number;
//#endregion requiredReputation Prop



}