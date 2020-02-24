import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class UserPrivilegeBase {

//#region userPrivilegeId Prop
        @prop()
        userPrivilegeId : number;
//#endregion userPrivilegeId Prop


//#region privilegeId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        privilegeId : number;
//#endregion privilegeId Prop


//#region userId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        userId : number;
//#endregion userId Prop





}