# Verification target: Cyclotomic Three Three Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60210ab3a64884e590b421544045b0fad89637b5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Three/Variant8a43be3dc114958adc9e679d5b2b4afb705dee7061df338d3ebaf5dc3c077e72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/CyclotomicThreeThreeNamespaced.lean/index.md) · [Full source](../../../../NumberTheory/CyclotomicThreeThreeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60210ab3a64884e590b421544045b0fad89637b5`.

Source path: `GRWTSK/NumberTheory/Three/Variant8a43be3dc114958adc9e679d5b2b4afb705dee7061df338d3ebaf5dc3c077e72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Three/Variant8a43be3dc114958adc9e679d5b2b4afb705dee7061df338d3ebaf5dc3c077e72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Cyclotomic.Embeddings` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Cyclotomic.Rat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Units.DirichletTheorem` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Fintype` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [coe_eta](../../../../NumberTheory/CyclotomicThreeThreeNamespaced.lean/declarations/coe-eta.md) | 47 | `result-track:5a38d2fe594594598dbd0ac71b6857cbbd2014455be3dbb4833e0096a10c0565` |
| 2 | `lemma` | [Cyclotomic Three Three Namespaced](../../../../NumberTheory/CyclotomicThreeThreeNamespaced.lean/declarations/tointeger-cube-eq-one.md) | 49 | `result-track:214d7768d1ba41eb29f6581817ff396ce2a8659daad7d0e90437a77af50af471` |
| 3 | `theorem` | [Units.mem](../../../../NumberTheory/CyclotomicThreeThreeNamespaced.lean/declarations/units-mem.md) | 55 | `result-track:928a536b0faa137a2215f5a041d807bbd64373105c91196ab09c7e53f7704339` |
| 4 | `lemma` | [lambda_sq](../../../../NumberTheory/CyclotomicThreeThreeNamespaced.lean/declarations/lambda-sq.md) | 86 | `result-track:3c47a85e695dea30f6dc1e3f54b1e17c42f5786ee4c3f0455b6645d97dfa748f` |
| 5 | `lemma` | [eta_sq](../../../../NumberTheory/CyclotomicThreeThreeNamespaced.lean/declarations/eta-sq.md) | 94 | `result-track:d7eb4dbe95f6a4e03708a24cbc1a1d7072c4b9288c8b956c06db07b9103563df` |
| 6 | `theorem` | [eq_one_or_neg_one_of_unit_of_congruent](../../../../NumberTheory/CyclotomicThreeThreeNamespaced.lean/declarations/eq-one-or-neg-one-of-unit-of-congruent.md) | 101 | `result-track:c2c18dccd49b3e8e5a8f83b5d38d5474b87cc1303aebe9d1dd3c84e38f269090` |
| 7 | `lemma` | [lambda_dvd_or_dvd_sub_one_or_dvd_add_one](../../../../NumberTheory/CyclotomicThreeThreeNamespaced.lean/declarations/lambda-dvd-or-dvd-sub-one-or-dvd-add-one.md) | 133 | `result-track:bc3b05d9a9a702f2567a09c39ca08f8e12f7bcf6d6a7ccaa0775ca50a033bc0b` |
| 8 | `lemma` | [eta_sq_add_eta_add_one](../../../../NumberTheory/CyclotomicThreeThreeNamespaced.lean/declarations/eta-sq-add-eta-add-one.md) | 158 | `result-track:8a67f446f97b4508b5d67cf36f3f4a698d50e665af18abf9592c4835a1f440d4` |
| 9 | `lemma` | [cube_sub_one_eq_mul](../../../../NumberTheory/CyclotomicThreeThreeNamespaced.lean/declarations/cube-sub-one-eq-mul.md) | 163 | `result-track:bbe327e026e84c41f67f3b4ef955c3b93e14a58d19c5859276bcede61f2c0164` |
| 10 | `lemma` | [lambda_dvd_mul_sub_one_mul_sub_eta_add_one](../../../../NumberTheory/CyclotomicThreeThreeNamespaced.lean/declarations/lambda-dvd-mul-sub-one-mul-sub-eta-add-one.md) | 173 | `result-track:2f2211d8b3d14b301fa8fd0c7e468b617ecc1393616bf34a72d8374e5996dcea` |
| 11 | `lemma` | [lambda_pow_four_dvd_cube_sub_one_of_dvd_sub_one](../../../../NumberTheory/CyclotomicThreeThreeNamespaced.lean/declarations/lambda-pow-four-dvd-cube-sub-one-of-dvd-sub-one.md) | 182 | `result-track:c7f8b2157810366065dae706139d50b6d5e07ba91d90c7699587809f7ea60c4c` |
| 12 | `lemma` | [lambda_pow_four_dvd_cube_add_one_of_dvd_add_one](../../../../NumberTheory/CyclotomicThreeThreeNamespaced.lean/declarations/lambda-pow-four-dvd-cube-add-one-of-dvd-add-one.md) | 193 | `result-track:560daa8c9876d777ee48d9381acb765bd491a9344f7b87ec38f1b2e97289bbab` |
| 13 | `lemma` | [lambda_pow_four_dvd_cube_sub_one_or_add_one_of_lambda_not_dvd](../../../../NumberTheory/CyclotomicThreeThreeNamespaced.lean/declarations/lambda-pow-four-dvd-cube-sub-one-or-add-one-of-lambda-not-dvd.md) | 202 | `result-track:5edf30055ff7de1c6ccd799c97161a9342538e16f7654a9adb03874b716f8b61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=266dc5356769535ff504c928c2a32ad9febd982023bb4a34c1fb84c5f76b78c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Three/Variant8a43be3dc114958adc9e679d5b2b4afb705dee7061df338d3ebaf5dc3c077e72.lean","GRWTSK/_verification/specifications/NumberTheory/Three/Variant8a43be3dc114958adc9e679d5b2b4afb705dee7061df338d3ebaf5dc3c077e72.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
