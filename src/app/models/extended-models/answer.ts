import {AnswerBase} from '../database-models/answer-base';
import {QuestionBase} from '../database-models/question-base';
import {UserBase} from '../database-models/user-base';
import {AnswerVoteBase} from '../database-models/answer-vote-base';
//Generated Imports
export class Answer extends AnswerBase 
{




//#region Generated Reference Properties
//#region question Prop
question : QuestionBase;
//#endregion question Prop
//#region user Prop
user : UserBase;
//#endregion user Prop
//#region answerVotes Prop
answerVotes : AnswerVoteBase[];
//#endregion answerVotes Prop

//#endregion Generated Reference Properties



}