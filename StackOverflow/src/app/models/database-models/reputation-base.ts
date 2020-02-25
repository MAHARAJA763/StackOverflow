import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class ReputationBase {

//#region reputationId Prop
        @prop()
        reputationId : number;
//#endregion reputationId Prop


//#region reputation Prop
        @prop()
        reputation : number;
//#endregion reputation Prop


//#region userId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        userId : number;
//#endregion userId Prop



}