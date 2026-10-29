# Verification target: GRWTSK.Analysis.FunctionalAnalysis.CanonicalTensor.Variant5eca1d5e1f95ba8f258dff66ddaf9f29f99c91b49ac6be61f2833500e88c309a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61863683f0ebaff975e8c9ea23a51b6a1f4dc15a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/CanonicalTensor/Variant5eca1d5e1f95ba8f258dff66ddaf9f29f99c91b49ac6be61f2833500e88c309a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Analysis/FunctionalAnalysis/CanonicalTensor/Variant5eca1d5e1f95ba8f258dff66ddaf9f29f99c91b49ac6be61f2833500e88c309a.lean/index.md) · [Full source](../../../../../../Analysis/FunctionalAnalysis/CanonicalTensor/Variant5eca1d5e1f95ba8f258dff66ddaf9f29f99c91b49ac6be61f2833500e88c309a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61863683f0ebaff975e8c9ea23a51b6a1f4dc15a`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/CanonicalTensor/Variant5eca1d5e1f95ba8f258dff66ddaf9f29f99c91b49ac6be61f2833500e88c309a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/CanonicalTensor/Variant5eca1d5e1f95ba8f258dff66ddaf9f29f99c91b49ac6be61f2833500e88c309a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InnerProductSpace.canonicalContravariantTensor](../../../../../../Analysis/FunctionalAnalysis/CanonicalTensor/Variant5eca1d5e1f95ba8f258dff66ddaf9f29f99c91b49ac6be61f2833500e88c309a.lean/declarations/innerproductspace-canonicalcontravarianttensor--27859f4138e3366c09053056.md) | 31 | `declaration-track:27859f4138e3366c09053056f10c857f0c80494d321a9cf498601f4ce91c3701` |
| 2 | `def` | [InnerProductSpace.canonicalCovariantTensor](../../../../../../Analysis/FunctionalAnalysis/CanonicalTensor/Variant5eca1d5e1f95ba8f258dff66ddaf9f29f99c91b49ac6be61f2833500e88c309a.lean/declarations/innerproductspace-canonicalcovarianttensor--dc05fc591a7452a4cd15cae7.md) | 38 | `declaration-track:dc05fc591a7452a4cd15cae75a838a24422f431199f0c3a2316857b58f570f2f` |
| 3 | `theorem` | [InnerProductSpace.canonicalCovariantTensor_eq_sum](../../../../../../Analysis/FunctionalAnalysis/CanonicalTensor/Variant5eca1d5e1f95ba8f258dff66ddaf9f29f99c91b49ac6be61f2833500e88c309a.lean/declarations/innerproductspace-canonicalcovarianttensor-eq-sum--67ddcd28155ca5e99e51505e.md) | 42 | `result-track:67ddcd28155ca5e99e51505ec623dae2066ff42e24aaff686b3ee40eee464285` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30fd990cc9fe462ea5ad8ac96615081c8b8e47b007fef446e99ed300a5f4965d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/CanonicalTensor/Variant5eca1d5e1f95ba8f258dff66ddaf9f29f99c91b49ac6be61f2833500e88c309a.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/CanonicalTensor/Variant5eca1d5e1f95ba8f258dff66ddaf9f29f99c91b49ac6be61f2833500e88c309a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
