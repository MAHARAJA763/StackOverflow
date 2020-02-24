import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class vTagBase {

//#region tagId Prop
        @gridColumn({visible: true, columnIndex:0, allowSorting: true, headerKey: 'tagId', keyColumn: true})
        tagId : number;
//#endregion tagId Prop


//#region tagName Prop
        @gridColumn({visible: true, columnIndex:1, allowSorting: true, headerKey: 'tagName', keyColumn: false})
        tagName : string;
//#endregion tagName Prop


//#region tagDetail Prop
        @gridColumn({visible: true, columnIndex:2, allowSorting: true, headerKey: 'tagDetail', keyColumn: false})
        tagDetail : string;
//#endregion tagDetail Prop

}