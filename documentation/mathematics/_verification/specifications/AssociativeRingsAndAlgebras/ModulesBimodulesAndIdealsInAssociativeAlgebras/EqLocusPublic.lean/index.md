# Verification target: Eq Locus Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7da0b38b13d99fd0bcec3460740af57936aa4b51",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EqLocus/Variantfce5b86eda65ea9d9631ba56c3a2c065a0dc8f8f04acf3efe9855ad859691470.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EqLocusPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EqLocusPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7da0b38b13d99fd0bcec3460740af57936aa4b51`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EqLocus/Variantfce5b86eda65ea9d9631ba56c3a2c065a0dc8f8f04acf3efe9855ad859691470.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EqLocus/Variantfce5b86eda65ea9d9631ba56c3a2c065a0dc8f8f04acf3efe9855ad859691470.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eqLocus](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EqLocusPublic.lean/declarations/eqlocus.md) | 45 | `declaration-track:fa96df656c69983378144954b50e9204d8721e45d5834330cefa779331dc1d4b` |
| 2 | `theorem` | [mem_eqLocus](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EqLocusPublic.lean/declarations/mem-eqlocus.md) | 53 | `result-track:7be7f1e76513562da1e325b878b4bd259081ce1e2a8abbcc21d7e6663d4e54f8` |
| 3 | `theorem` | [eqLocus_toAddSubmonoid](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EqLocusPublic.lean/declarations/eqlocus-toaddsubmonoid.md) | 56 | `result-track:0344dcf693ace1c2f7b0342019326af7b971f384ae927caf54259bbf059a2d0f` |
| 4 | `theorem` | [eqLocus_eq_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EqLocusPublic.lean/declarations/eqlocus-eq-top.md) | 61 | `result-track:5fff1d5b18db8486b1f2e189fcb2d902f627f45a47214f536af4db3265c26516` |
| 5 | `theorem` | [eqLocus_same](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EqLocusPublic.lean/declarations/eqlocus-same.md) | 65 | `result-track:a4ad37724ca3bd895c6f2474e196f0d82a349e57feedf9a2076ab781c3a3bb4f` |
| 6 | `theorem` | [le_eqLocus](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EqLocusPublic.lean/declarations/le-eqlocus.md) | 67 | `result-track:317130fe2a714b1384086c38af70747770030ccb24bc5090f064afe85e8e48e1` |
| 7 | `theorem` | [eqOn_eqLocus](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EqLocusPublic.lean/declarations/eqon-eqlocus.md) | 71 | `result-track:a29e19a87f6bbd55c45c51b89be3fab14bf64e6def5b1509f50baca68872d8ef` |
| 8 | `theorem` | [eqOn_sup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EqLocusPublic.lean/declarations/eqon-sup.md) | 78 | `result-track:dd5659d7350242a48cb7e517df620b5dcdb7eb958cacdf58d8acc5b8bb554eb4` |
| 9 | `theorem` | [ext_on_codisjoint](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EqLocusPublic.lean/declarations/ext-on-codisjoint.md) | 85 | `result-track:cb09869fb58b82423abaa2a22c33be07a221a3edec60c9753d73176e38b585d5` |
| 10 | `theorem` | [eqLocus_eq_ker_sub](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EqLocusPublic.lean/declarations/eqlocus-eq-ker-sub.md) | 102 | `result-track:32c13b304906ee18d4f4dd4fe9ac37a29507739eec495ecc2a0fda96b5d55e77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=143b175abed119fbc7ab3be04f8c845bbeed5666f192e7bd8ed36488bac9dab8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/EqLocus/Variantfce5b86eda65ea9d9631ba56c3a2c065a0dc8f8f04acf3efe9855ad859691470.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/EqLocus/Variantfce5b86eda65ea9d9631ba56c3a2c065a0dc8f8f04acf3efe9855ad859691470.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
