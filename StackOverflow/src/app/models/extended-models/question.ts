import {QuestionBase} from '../database-models/question-base';
import {UserBase} from '../database-models/user-base';
import {AnswerBase} from '../database-models/answer-base';
import {QuestionVoteBase} from '../database-models/question-vote-base';
import {QuestionTagBase} from '../database-models/question-tag-base';
//Generated Imports
export class Question extends QuestionBase 
{




//#region Generated Reference Properties
//#region user Prop
        user : UserBase;
//#endregion user Prop

//#region answers Prop
        answers : AnswerBase[];
//#endregion answers Prop

//#region questionVotes Prop
        questionVotes : QuestionVoteBase[];
//#endregion questionVotes Prop

//#region questionTags Prop
        questionTags : QuestionTagBase[];
//#endregion questionTags Prop

//#endregion Generated Reference Properties
}