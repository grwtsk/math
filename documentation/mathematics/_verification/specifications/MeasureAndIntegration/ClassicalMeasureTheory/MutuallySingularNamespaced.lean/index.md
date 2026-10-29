# Verification target: Mutually Singular Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "049d5abd89b5c0d07ae949b7d2102b59783b9cb0",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MutuallySingular/Variant1e4c8411f478e8512f997ac4fbaf40beb8db04164e61d5751ddad5dedf1be878.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `049d5abd89b5c0d07ae949b7d2102b59783b9cb0`.

Source path: `GRWTSK/Analysis/MeasureTheory/MutuallySingular/Variant1e4c8411f478e8512f997ac4fbaf40beb8db04164e61d5751ddad5dedf1be878.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MutuallySingular/Variant1e4c8411f478e8512f997ac4fbaf40beb8db04164e61d5751ddad5dedf1be878.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.MeasureSpace` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MutuallySingular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespaced.lean/declarations/mutuallysingular.md) | 47 | `declaration-track:933398d2b3ee99aaef96072e16c6e87d316075d9ee7ad4bc48406b741fef6840` |
| 2 | `theorem` | [mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespaced.lean/declarations/mk.md) | 57 | `result-track:806dd1a8add8835c276aed193ec8dfa88119de3d22346f9c862f5ad4cf3d3bc3` |
| 3 | `theorem` | [zero_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespaced.lean/declarations/zero-right.md) | 65 | `result-track:f9510ab1f896d2b013ebd64cd2d412a3f4507595c5ebebf6f013ed4287006a98` |
| 4 | `theorem` | [symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespaced.lean/declarations/symm.md) | 70 | `result-track:419d0278491dfa27f5fc322f5e8c2a09d96f823030d3437c6e82f58501d4e6f5` |
| 5 | `theorem` | [comm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespaced.lean/declarations/comm.md) | 75 | `result-track:d1a75bcd01eda268c8aba0a7137b60a6562ee1ebb444428881926d3b1fcf091e` |
| 6 | `theorem` | [zero_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespaced.lean/declarations/zero-left.md) | 80 | `result-track:b8d187c0c37ecd0e611b38bba76562ec7fe286215d2b63c66bbe57ec3fcb6abe` |
| 7 | `theorem` | [mono_ac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespaced.lean/declarations/mono-ac.md) | 84 | `result-track:c8b4e9027c254d66123342e3ad7f9799e2126d2da869186c3018c728199989ae` |
| 8 | `theorem` | [mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespaced.lean/declarations/mono.md) | 89 | `result-track:15292c9ee34bfd042884a81c8666924f57c4e650f275960eaf1f1ac588df4ed1` |
| 9 | `theorem` | [sum_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespaced.lean/declarations/sum-left.md) | 94 | `result-track:3d148cf65235369f0ea9d8f0cfb4d6ff705973854196a99d02ec00b5f11f4c48` |
| 10 | `theorem` | [sum_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespaced.lean/declarations/sum-right.md) | 104 | `result-track:08c1cec60d0ca12c182a6da431e4503279e5d638678d404077dbd3f78f2defeb` |
| 11 | `theorem` | [add_left_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespaced.lean/declarations/add-left-iff.md) | 109 | `result-track:4fec1af540ebc04aab6cdc303c68916cf44e037b5aabf9d7479e590c6600d498` |
| 12 | `theorem` | [add_right_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespaced.lean/declarations/add-right-iff.md) | 114 | `result-track:825ea43bcd5b8496c37c33db5c80d093c43501d662689122138e2ad2ec0840aa` |
| 13 | `theorem` | [add_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespaced.lean/declarations/add-left.md) | 118 | `result-track:4fe4f4324f34e30ee61cf651929ba36acdca9e9ae0b0fe7cb16bf05c0ef6c1b5` |
| 14 | `theorem` | [add_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespaced.lean/declarations/add-right.md) | 122 | `result-track:b5a1c095718f5ba312c80d4d352a47468bffa25cf360a8a4a747a4c1920e3527` |
| 15 | `theorem` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespaced.lean/declarations/smul.md) | 126 | `result-track:682c969f16e56e2de7a0a26f5bba95cec9608cf5f67e9175c6eac7a223c2c9bc` |
| 16 | `theorem` | [smul_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespaced.lean/declarations/smul-nnreal.md) | 130 | `result-track:e0527c135560071b0946fddbb451b6d6e97df66cef5d124b2c2ca5879a5eaa38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4bcc1dca79a1583bd995482cb1e1c5cf315f747fd7007260f99298006eaeffeb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/MutuallySingular/Variant1e4c8411f478e8512f997ac4fbaf40beb8db04164e61d5751ddad5dedf1be878.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/MutuallySingular/Variant1e4c8411f478e8512f997ac4fbaf40beb8db04164e61d5751ddad5dedf1be878.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
