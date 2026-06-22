---
name: implementing-code-requirement
description: 规范复杂代码需求的实现流程，要完整经历需求分析与对齐、技术方案、代码编写思路等流程，然后再编写代码。使用条件：当用户主动提问"需求：..." 或 "做一个需求"等，亦或是经过需求分析后是一个改动相对较多或本身比较复杂的问题时。
---

## WORKFLOW：

1、先分析，将你对需求的理解与用户输入的需求进行对齐。 这个过程需要你复述需求内容、提出你的问题，don't assume，don't hide confusions. Surface tradeoffs:

- State assumptions explicitly — If uncertain, ask rather than guess

- Present multiple interpretations — Don't pick silently when ambiguity exists

- Push back when warranted — If a simpler approach exists, say so

- Stop when confused — Name what's unclear and ask for clarification

2、写设计方案，根据需求理解给出技术设计方案。

- 技术设计方案目的是给出技术层面的考量和设计，而不是具体的代码实现，所以不要列出大段代码

3、代码实现思路。根据技术方案, 简要说明代码实现思路, 列出需要修改、删除、新增的类或文件，更细节的代码实现采用伪代码表示

4、遵循代码实现思路，开始编写代码

5、使用 sub agent 进行 code review

5、生成技术方案文档，以 markdown 形式输出当前需求的技术文档，文档内不要输出大段代码以及修改的文件列表


## **CRITICAL** 
- 每个步骤结束之后只有经过用户同意后才进入下一步
