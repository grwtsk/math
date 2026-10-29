# Verification target: Syntax Public Opt Precedence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56e98db3c6f4bd55b625b39e8f01d3058b3bf91e",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant6cf3dbd9496bf2f3af7212e4b4751b96453f7b14ba0196646a0e9526e9c09413.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56e98db3c6f4bd55b625b39e8f01d3058b3bf91e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant6cf3dbd9496bf2f3af7212e4b4751b96453f7b14ba0196646a0e9526e9c09413.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant6cf3dbd9496bf2f3af7212e4b4751b96453f7b14ba0196646a0e9526e9c09413.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/builtin-initialize-source-edition-2.md) | 16 | `declaration-track:8dfbe5014b46dcc37e07505dfa80cc9f776bf45cd65ae55dcaa55a65d547a2c2` |
| 2 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/builtin-initialize.md) | 20 | `declaration-track:5243b8bc2c487a5112fff63613604e8e9c96272bee349338779c509c600cde0f` |
| 3 | `def` | [precedenceParser](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/precedenceparser.md) | 24 | `declaration-track:60572970f39cdaeef5c44e1f644be43c147f1a294f60aee9eac1f3c46375eacc` |
| 4 | `def` | [syntaxParser](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/syntaxparser.md) | 27 | `declaration-track:1a8d190520c4b850a0fbbf842e5041210acceac3e480afbe1c764b51a74aa474` |
| 5 | `def` | [«precedence»](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/precedence.md) | 30 | `declaration-track:240fcffa2cf1bce2b8705fa044fb43dd96a8d8751587c90dd35c870a94fbea13` |
| 6 | `def` | [optPrecedence](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/optprecedence.md) | 32 | `declaration-track:7c1aeee7f4804b71921275efd6af7cd176141de96beab65d7a56b52788f18252` |
| 7 | `def` | [numPrec](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/numprec.md) | 35 | `declaration-track:0ee3187bc3c06615dc2bbdc125a837b7ca43f6fb7ec3abc683f2c939d2bb6600` |
| 8 | `def` | [paren](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/paren.md) | 37 | `declaration-track:751b0879add8dd21c069797a08caaf296662b9f59a61e3fc513b186753e88554` |
| 9 | `def` | [cat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/cat.md) | 39 | `declaration-track:3d36a0d07be032456175b1a4fa262309b16338ecfceaafc6deb9862f3f934fbb` |
| 10 | `def` | [unary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/unary.md) | 41 | `declaration-track:9299bf1e066fccf4e252de2f3446c788c02deaa849a07d73eb0c17b3443f1726` |
| 11 | `def` | [binary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/binary.md) | 43 | `declaration-track:adcacba5fffa89f68d64330ea75c4f5b4086e003952f2eec72dade1957e09269` |
| 12 | `def` | [sepBy](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/sepby.md) | 45 | `declaration-track:7ef310738d3f0f1d0cb5d1080987da6d5f5a8cfa279385bb7da3a923ed307b78` |
| 13 | `def` | [sepBy1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/sepby1.md) | 48 | `declaration-track:2bfd41b95298eaf1d3185ba5b0b3da5b806538b8ac992fc8c9eb6d51cfbf2b7f` |
| 14 | `def` | [atom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/atom.md) | 52 | `declaration-track:d4d55fdf7a31bb207f6635bdeddce76d8187f9a51d1e5e3cb3d3d305a2cbafb5` |
| 15 | `def` | [nonReserved](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/nonreserved.md) | 55 | `declaration-track:840ce9262f21f83504dbba38960180256a77a6f7b5f6063944b8cf2c1100007d` |
| 16 | `def` | [unicodeAtom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/unicodeatom.md) | 58 | `declaration-track:59539eda5de38ae294495ad42898a1f64776cb2ed380bcd07a02aea0129def8f` |
| 17 | `def` | [namedName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/namedname.md) | 65 | `declaration-track:a22a65798d898a55fbc8e0f6dc23ece877b6823b830ebdc52a301454b4b72eca` |
| 18 | `def` | [optNamedName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/optnamedname.md) | 67 | `declaration-track:e006f90741b67e0b6ba700c6f521a9e73cf5ce6f89ab94dc924a841794fc2a1f` |
| 19 | `def` | [identPrec](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/identprec.md) | 69 | `declaration-track:7d4a5e757a5aec3e8125655ab82ef0075a74aac63889149bd767d1a98a0f77aa` |
| 20 | `def` | [notationItem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/notationitem.md) | 70 | `declaration-track:6b994575a25b1b6c6db4a368ae36ab7a7493b8eeb7e47f92058f8d45752ea20f` |
| 21 | `def` | [«prefix»](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/prefix.md) | 74 | `declaration-track:c09fa0add6fe5c46904beec1bfbd3d3950ba71f97e04b81d30183ee71d0534ca` |
| 22 | `def` | [«infix»](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/infix.md) | 78 | `declaration-track:6e9cdca2d0b4ab4a38bce76eb98898c2167b0744382b1f7158dab5d50fbd401c` |
| 23 | `def` | [«infixl»](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/infixl.md) | 82 | `declaration-track:01d8b4bf4a8a701102352a8928575fd5c884c1424d644ceee4435fdb9be92eb7` |
| 24 | `def` | [«infixr»](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/infixr.md) | 86 | `declaration-track:26c9763c0e17206c20d1ae5b210ce3c85681a5bf4f8e2248a140b6c6ad7075d1` |
| 25 | `def` | [«postfix»](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/postfix.md) | 90 | `declaration-track:b6aad2d4f9ed50403977538326a681b7f0c81e89f4af6b0c6b1fb7b01370bd40` |
| 26 | `def` | [mixfixKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/mixfixkind.md) | 91 | `declaration-track:5f21e9ad88365156de60e4fd2c18d069fddd22e8efea2741ac40a5a706e07547` |
| 27 | `def` | [«mixfix»](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/mixfix.md) | 92 | `declaration-track:64a23ae4285743001fb6b17548adeaadbdf23960295a10c28c1b7b6aa3ed8178` |
| 28 | `def` | [«notation»](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/notation.md) | 95 | `declaration-track:5633ead0052b7d2bbbe5d08d5d0bd9c3d792be8c916291ef9c674bd5854b8067` |
| 29 | `def` | [optKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/optkind.md) | 101 | `declaration-track:7e9767e99df647ac92b200eaf0b2adb3d7d64f5702d98fb05155c0e910ed090a` |
| 30 | `def` | [«macro_rules»](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/macro-rules.md) | 102 | `declaration-track:47c6998f4b111f3e1a31cc3ca09b9fd5b110fe0cc57b835d6204f1cc765a17a1` |
| 31 | `def` | [«syntax»](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/syntax.md) | 105 | `declaration-track:84956407e171163d160a83aa9f1dcf4bb5738e70673a1db46d654e31506d24b8` |
| 32 | `def` | [syntaxAbbrev](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/syntaxabbrev.md) | 108 | `declaration-track:b338109fbc94c53fa6f034665cb5e0a4e8afc515cf7e727809af89e8977812ca` |
| 33 | `def` | [catBehaviorBoth](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/catbehaviorboth.md) | 110 | `declaration-track:6abf857d346fa80567e20fe7a5a2143702aa1f6bb0f48c609be21158a85c594b` |
| 34 | `def` | [catBehaviorSymbol](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/catbehaviorsymbol.md) | 111 | `declaration-track:8dac4bb3ebb0eded1c7bb3c3e37d1e4b69b94c27797e8ddd13f4360f86b0e69f` |
| 35 | `def` | [catBehavior](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/catbehavior.md) | 112 | `declaration-track:4ad245339fd4f4c45980dacf9559e2a46839205030efbdd76f0c7a329d96ddca` |
| 36 | `def` | [syntaxCat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/syntaxcat.md) | 113 | `declaration-track:1d1359846ce0e218bbccc22b54c220707b71f050a62fcccabe01feff6c2a0fcf` |
| 37 | `def` | [macroArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/macroarg.md) | 115 | `declaration-track:afa6e1bbc00b6a866920365d4cd8df6f0badd869716f6a1bfb6e5eb3ce82b2dc` |
| 38 | `def` | [macroRhs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/macrorhs.md) | 117 | `declaration-track:914faa438b721b382e8c131ce86f65a6db23c9751aef3e4de4b52bfb9c7c1756` |
| 39 | `def` | [macroTail](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/macrotail.md) | 118 | `declaration-track:dc45ca536a89dba43f6fe28c0620a6573ecd46e4be4dd4bf3c2d9bba45d07b54` |
| 40 | `def` | [«macro»](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/macro.md) | 119 | `declaration-track:21170a94f97f282fb889c4f605e6954099338e783f7e6454a48231bc03826b1c` |
| 41 | `def` | [«elab_rules»](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/elab-rules.md) | 122 | `declaration-track:ba8e1a1da0745f081587ec8b085d1b34dbf51ffd9e25a705b54f878997169623` |
| 42 | `def` | [elabArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/elabarg.md) | 125 | `declaration-track:38ecbb0b038475fc0941dba54b7c440cd2000f7389be34690ab6ccad7199d0fe` |
| 43 | `def` | [elabTail](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/elabtail.md) | 126 | `declaration-track:741196051e22d654d017ee7ccc0efe9e2148b33a1845e7b4ef90e2922bcd4b90` |
| 44 | `def` | [«elab»](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/elab.md) | 127 | `declaration-track:f1df3cbbcbcf5c60999c89e7a7e51861192c2baa2ac6d1680317e363d8edc081` |
| 45 | `def` | [binderPredicate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicOptPrecedence.lean/declarations/binderpredicate.md) | 137 | `declaration-track:5a303f58e368309570b30ccd35f591137f042905c73c3addd29e050e6e543b94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e49a15d2bca88b5efdc6e86d03a19ace620d4d7f3e11c8ceea022093923b7f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant6cf3dbd9496bf2f3af7212e4b4751b96453f7b14ba0196646a0e9526e9c09413.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant6cf3dbd9496bf2f3af7212e4b4751b96453f7b14ba0196646a0e9526e9c09413.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
