# Verification target: Distrib Char Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99acb057e4afc72eadc67e49df9350518bc2305b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/DistribChar/Variantd64c9132ec8e4f089aaa0caeb45d2c87a9c631ce2a09000a34155a4a67372d89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DistribCharPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DistribCharPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99acb057e4afc72eadc67e49df9350518bc2305b`.

Source path: `GRWTSK/Analysis/MeasureTheory/DistribChar/Variantd64c9132ec8e4f089aaa0caeb45d2c87a9c631ce2a09000a34155a4a67372d89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/DistribChar/Variantd64c9132ec8e4f089aaa0caeb45d2c87a9c631ce2a09000a34155a4a67372d89.lean.json)

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
| 1 | `def` | [distribHaarChar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DistribCharPublic.lean/declarations/distribhaarchar.md) | 44 | `declaration-track:411945d3725d634814e00e99513379e628bea9aed626daf242fdb120e505532c` |
| 2 | `lemma` | [distribHaarChar_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DistribCharPublic.lean/declarations/distribhaarchar-pos.md) | 58 | `result-track:88e7daa089c828cac3bf1e1623d8b150918b4b8914fd7771df8e2206df7db116` |
| 3 | `lemma` | [addHaarScalarFactor_smul_eq_distribHaarChar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DistribCharPublic.lean/declarations/addhaarscalarfactor-smul-eq-distribhaarchar.md) | 64 | `result-track:18c49903e10f423762df83fdeeefc17c06aa5f130f2a67dc259e8d3c53fbdbe3` |
| 4 | `lemma` | [addHaarScalarFactor_smul_inv_eq_distribHaarChar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DistribCharPublic.lean/declarations/addhaarscalarfactor-smul-inv-eq-distribhaarchar.md) | 70 | `result-track:edbc14a8692493d3cd14193add7a23c3906b0c6e1f0bf1d0404df227662a3d58` |
| 5 | `lemma` | [addHaarScalarFactor_smul_eq_distribHaarChar_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DistribCharPublic.lean/declarations/addhaarscalarfactor-smul-eq-distribhaarchar-inv.md) | 77 | `result-track:4078e5bcc9aed00248e7c13ab5b80bbc3d29606a65403f76ca36d58756e85dfd` |
| 6 | `lemma` | [distribHaarChar_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DistribCharPublic.lean/declarations/distribhaarchar-mul.md) | 84 | `result-track:42f2688ba64b6ba32410a7a0685b5f65a5cee843114541c7107f273dd259248c` |
| 7 | `lemma` | [distribHaarChar_eq_div](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DistribCharPublic.lean/declarations/distribhaarchar-eq-div.md) | 89 | `result-track:6273ab4e3ede9e5fbf75889f867bb81e0235f831b6cade3cb8e82047da1a28b2` |
| 8 | `lemma` | [distribHaarChar_eq_of_measure_smul_eq_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/DistribCharPublic.lean/declarations/distribhaarchar-eq-of-measure-smul-eq-mul.md) | 93 | `result-track:763471c8d557013b945b5bfe4712609cb471764c0489da2e8c47b983cd9c7154` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=74d0bbb163fa60bc2e6ddd24e8938c5053063c225dce5b3814e825b3dca25e06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/DistribChar/Variantd64c9132ec8e4f089aaa0caeb45d2c87a9c631ce2a09000a34155a4a67372d89.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/DistribChar/Variantd64c9132ec8e4f089aaa0caeb45d2c87a9c631ce2a09000a34155a4a67372d89.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
