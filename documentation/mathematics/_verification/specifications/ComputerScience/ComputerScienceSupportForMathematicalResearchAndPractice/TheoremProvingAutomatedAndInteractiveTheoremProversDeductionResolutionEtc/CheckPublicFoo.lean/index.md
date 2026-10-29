# Verification target: Check Public Foo

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "594588f2c370fa9cf8787b036204ed01307740a5",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant58ec1d68525ccef12125c91b244cd933bf21ed76b3bf5bdd2cd5fd403df70c08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `594588f2c370fa9cf8787b036204ed01307740a5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant58ec1d68525ccef12125c91b244cd933bf21ed76b3bf5bdd2cd5fd403df70c08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant58ec1d68525ccef12125c91b244cd933bf21ed76b3bf5bdd2cd5fd403df70c08.lean.json)

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
| 1 | `structure` | [Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/context.md) | 89 | `declaration-track:e65bb8737afe4f9907f3d9f6b8c626c9fc156d625057b9f92eaf518fd98ce3e9` |
| 2 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/state.md) | 95 | `declaration-track:2fde708eff592a9efca43ed892cf6ab00d8ddd737bc855da688f3b01c963b793` |
| 3 | `abbrev` | [CheckM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/checkm.md) | 99 | `declaration-track:bdebfcd8dfa033bdaf96514d2cf3f753e0c1d04ad774cc5b08b1794df179b0be` |
| 4 | `def` | [checkTypes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/checktypes.md) | 101 | `declaration-track:e1b246ba6b16d8b92b3a9d74da4c5c0296d6c215462955ae437a4dd020f38513` |
| 5 | `def` | [checkFVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/checkfvar.md) | 104 | `declaration-track:24fd1f166ee569decf538368ce5ff2974bebea4ffda7ba374a5801b0acc8a3b8` |
| 6 | `def` | [isCtorParam](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/isctorparam.md) | 109 | `declaration-track:12f814ae33a2591884705f7859b4ce85124e921c65edf0fc08b571eb471a5802` |
| 7 | `def` | [checkAppArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/checkappargs.md) | 114 | `declaration-track:5dba83662460456ef2e63b3652eea566c113484df903d79352d6ff99f788b044` |
| 8 | `def` | [checkLetValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/checkletvalue.md) | 137 | `declaration-track:6ae6eff31190bb54d3bb2da7b53d29760ec1ba377d91e6425e2ce715d448d35b` |
| 9 | `def` | [checkJpInScope](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/checkjpinscope.md) | 144 | `declaration-track:3eeef4c020ade9094e5e246630ebf5f32eaa38cb23066989209547f95f2db2ba` |
| 10 | `def` | [checkParam](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/checkparam.md) | 158 | `declaration-track:3a3b8df60bedcf417d18aeb828cea139301a71fe728c6a573d1717f54482e1fb` |
| 11 | `def` | [checkParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/checkparams.md) | 162 | `declaration-track:18ba64629149140eb4a2c38c62600f1fee2b0b40f5a482d9cde84edd2e32c7bc` |
| 12 | `def` | [checkLetDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/checkletdecl.md) | 165 | `declaration-track:8732a26a5f1beacf04f1224d01df538dedfffcf21afe6870fc30f24a1a888673` |
| 13 | `def` | [addFVarId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/addfvarid.md) | 174 | `declaration-track:b77da6b50bd4b953b2602ca86b0c371c82dd13ea29952b85b829c2e6df9e9343` |
| 14 | `def` | [withFVarId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/withfvarid.md) | 179 | `declaration-track:28b5f8427c44381592548ebe7bf1307fafd6774cc34d1e64124a4e2c7ec8f1e5` |
| 15 | `def` | [withJp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/withjp.md) | 183 | `declaration-track:852ef626bcf9bc8c3aed3c5ffd2998c6246edd039c8f417d45848058e975e4d4` |
| 16 | `def` | [withParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/withparams.md) | 187 | `declaration-track:438bf5770e5a45861dc833dd63dba737bb04aee96d0b62f9b5da4122e54087c7` |
| 17 | `def` | [checkFunDeclCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/checkfundeclcore.md) | 196 | `declaration-track:46b88e9b2ad2a2a55e101437f60e63e5ae528a964dff14c922ecbcd886610a32` |
| 18 | `def` | [checkFunDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/checkfundecl.md) | 205 | `declaration-track:2fd596c8d708d318601ec6fb9e8095481bd64dfd34b33fedcadd5c334e6fe862` |
| 19 | `def` | [checkCases](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/checkcases.md) | 215 | `declaration-track:5024a2d15fabd6c952b7e7dcafde9be6fee9b04bc2de9668cc56adec3d9bb3cd` |
| 20 | `def` | [check](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/check.md) | 234 | `declaration-track:c767633ca4f9fe0b524010604b07f56320b11bcc9aa5471d26eb5d5c8373fa65` |
| 21 | `def` | [run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/run.md) | 255 | `declaration-track:ab11de2d96101947b56fbd351a86c48df1e973dd5628544ef4bbe0b79b0e1b22` |
| 22 | `def` | [Decl.check](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CheckPublicFoo.lean/declarations/decl-check.md) | 261 | `declaration-track:e2a6c8e18cdc268d7f47290f528b6e2df184deb89dd2141ce9706a9f2b885b2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd5163c9a8f772af87588201527ef8cdb53c1cb732939402121e7d90b7431c7b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant58ec1d68525ccef12125c91b244cd933bf21ed76b3bf5bdd2cd5fd403df70c08.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant58ec1d68525ccef12125c91b244cd933bf21ed76b3bf5bdd2cd5fd403df70c08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
