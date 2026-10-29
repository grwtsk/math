# Verification target: Linear Struct Id Struct Id Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74fb054106fbb409e5a283857a1079db0381f813",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/StructId/Variant23e7e0b0e319952acd16bd6722088e12fe173abe0350c34a3c847af48904c57f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74fb054106fbb409e5a283857a1079db0381f813`.

Source path: `GRWTSK/Algebra/StructId/Variant23e7e0b0e319952acd16bd6722088e12fe173abe0350c34a3c847af48904c57f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/StructId/Variant23e7e0b0e319952acd16bd6722088e12fe173abe0350c34a3c847af48904c57f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.OrderInsts` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.ToInt` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.RingId` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Var` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Insts` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Grind.Module.Envelope` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preprocess](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/preprocess.md) | 18 | `declaration-track:8dba67946e21576b42cb6fd660f031527151cba58dc3a12353a854e9b4442a49` |
| 2 | `def` | [internalizeFn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/internalizefn.md) | 21 | `declaration-track:e8c20872efb4d29d679fa7a63bcf45f809eef677f0146381c58e2377268dc168` |
| 3 | `def` | [preprocessConst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/preprocessconst.md) | 24 | `declaration-track:cd54a085650d415b03afd854938f66982bcfd3f0491b177b45e2a9b72896f0b9` |
| 4 | `def` | [internalizeConst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/internalizeconst.md) | 29 | `declaration-track:f611686d8f71708e0bafd8fe816e7ec4d3ebbb26df433ea7d63d2658652a97a1` |
| 5 | `def` | [mkExpectedDefEqMsg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/mkexpecteddefeqmsg.md) | 36 | `declaration-track:54b6447a060fd76de4e9afd4fb00f9eb9d2ce24ac4a9d468cb4843309c17a068` |
| 6 | `def` | [ensureDefEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/ensuredefeq.md) | 39 | `declaration-track:5e11292115b3a4de544fd24ade06fe580df74bef84f527731f1fb82a9476a75e` |
| 7 | `def` | [addZeroLtOne](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/addzeroltone.md) | 43 | `declaration-track:094310cd8d578d41cbb36fc810b45813ef340eea060c0f8d08d4d48965341f4b` |
| 8 | `def` | [addZeroNeOne](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/addzeroneone.md) | 49 | `declaration-track:60ea3fc37ba7243cee7993b559db9b40908efefded690ce69c4d229da20ef7a6` |
| 9 | `def` | [isNonTrivialIsCharInst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/isnontrivialischarinst.md) | 55 | `declaration-track:e6e1050ae22d9625f45ccbc0f4a26780a387e5dff74122afd9488230dce073de` |
| 10 | `def` | [isCutsatType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/iscutsattype.md) | 60 | `declaration-track:1bfba9db03108cfeb176e0ec2c837a6b2e749a15f93b2dd939ac7b2b91521073` |
| 11 | `def` | [getCommRingInst?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/getcommringinst.md) | 67 | `declaration-track:97b52cda9cadffd3fe15553f50c8a52912f8c7c1b9f0724c43a4382bf7107a88` |
| 12 | `def` | [mkRingInst?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/mkringinst.md) | 71 | `declaration-track:b62ea55e7ac6d0305367d6c75bb131719c9d82872b506899a217db27c5f2462b` |
| 13 | `def` | [mkIntModuleInst?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/mkintmoduleinst.md) | 77 | `declaration-track:fbf44ed39eb5dc526758d7f391547333e2d362957be32918416943e7fa53dddb` |
| 14 | `def` | [mkSemiringInst?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/mksemiringinst.md) | 83 | `declaration-track:00e46efacff7c8a4d56ef3f739d6d4bb3c0088037e5b0b95b4aaa722ffc0d420` |
| 15 | `def` | [mkOne?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/mkone.md) | 89 | `declaration-track:58f6fe4bb115afaf8f481f485dd941ea0d4a21e286f110c056c9f14b44d7bf35` |
| 16 | `def` | [mkOrderedRingInst?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/mkorderedringinst.md) | 96 | `declaration-track:595a9c8cddb69344e94195284219da65a9348840608bf14caaf5306661157931` |
| 17 | `def` | [mkNoNatZeroDivInst?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/mknonatzerodivinst.md) | 108 | `declaration-track:4a0a04d4a520fd242d208687549d20a68126f8874c70f150c424f62b296d0c4d` |
| 18 | `def` | [getInst?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/getinst.md) | 113 | `declaration-track:da2d54188961bf018baeafe2606d2d05b523da8ec72fe00c996d180745465486` |
| 19 | `def` | [getInst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/getinst-source-edition-2.md) | 116 | `declaration-track:e384b1c4008a80d66cab1bac487e7775e9758c4be3f2cc5462c2872c601a1cd2` |
| 20 | `def` | [getBinHomoInst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/getbinhomoinst.md) | 119 | `declaration-track:8727f576292dc5f8b6678824ff70fb8d3a25f92c2e54601c7817d03f1a704b77` |
| 21 | `def` | [getHSMulIntInst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/gethsmulintinst.md) | 122 | `declaration-track:5707229a66b29ff817640b65403e40ec6eefb609929a38d1dd1c79876b65c2cd` |
| 22 | `def` | [getHSMulNatInst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/gethsmulnatinst.md) | 125 | `declaration-track:87a992bc9dfecdd8bc4be5fe6a738f3cf4b3f96fe7bb540f31a136f4d5f34885` |
| 23 | `def` | [checkToFieldDefEq?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/checktofielddefeq.md) | 128 | `declaration-track:b795e90c829bdb5fef81fb1349072097a050212fd6992867e008979fecc37619` |
| 24 | `def` | [ensureToFieldDefEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/ensuretofielddefeq.md) | 138 | `declaration-track:2b057a8ddb1a68e99ef1d9fa706e02688d1577e34b17f6359b8115670b3c057b` |
| 25 | `def` | [ensureToHomoFieldDefEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/ensuretohomofielddefeq.md) | 142 | `declaration-track:cb3d07a185220b313be3329f80d973121bd7f7fddf5ecde7a2a5054f1f100a43` |
| 26 | `def` | [getHSMulIntFn?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/gethsmulintfn.md) | 151 | `declaration-track:77ec0b74b936be18bdce02f8a715a82834ebdc9c5ca9f6d5f217b47563892af5` |
| 27 | `def` | [getHSMulNatFn?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/gethsmulnatfn.md) | 156 | `declaration-track:e79d0a63f4388d9a1cb1d2da3e0e6ac4c0e7a9db37682ee86ebfb538f775fe26` |
| 28 | `def` | [getStructId?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/getstructid.md) | 161 | `declaration-track:95f58931a9382adfd3ff97fd4990d5dc491be7e677befdeab133e987ac542198` |
| 29 | `def` | [mkNatModuleInst?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/mknatmoduleinst.md) | 372 | `declaration-track:1bc001667ffb34c5f6cd44d3bac6287203b7e4209f5e6a8d00804924f20ab46a` |
| 30 | `def` | [getNatStructId?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearStructIdStructIdPublic.lean/declarations/getnatstructid.md) | 375 | `declaration-track:5944f3d67d71d69a01b1b456ac02cefb34effe66aa2c885a35d1e7db9abd1a50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=917da139d2adc9bd3e584236a3953603a5eb9b8edb2cd2d1645d9f6d7cb06205 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/StructId/Variant23e7e0b0e319952acd16bd6722088e12fe173abe0350c34a3c847af48904c57f.lean","GRWTSK/_verification/specifications/Algebra/StructId/Variant23e7e0b0e319952acd16bd6722088e12fe173abe0350c34a3c847af48904c57f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
