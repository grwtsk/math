# Verification target: Int Units Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17c82fd4ebcfdfb7f16ca4634c2a537b0ae51bd4",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Units/Variante39db470b31b3b6755883cfa5fd68def236b8672a7c2aa0feebe29563e78c650.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/IntUnitsNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/IntUnitsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17c82fd4ebcfdfb7f16ca4634c2a537b0ae51bd4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Units/Variante39db470b31b3b6755883cfa5fd68def236b8672a7c2aa0feebe29563e78c650.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Units/Variante39db470b31b3b6755883cfa5fd68def236b8672a7c2aa0feebe29563e78c650.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Units` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Units` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [units_natAbs](../../../../../NumberTheory/ElementaryNumberTheory/IntUnitsNamespaced.lean/declarations/units-natabs.md) | 30 | `result-track:a7a05484051bf53045c762e774c1958acc8c87f9f62b09405c8f4c77065b6570` |
| 2 | `theorem` | [units_eq_one_or](../../../../../NumberTheory/ElementaryNumberTheory/IntUnitsNamespaced.lean/declarations/units-eq-one-or.md) | 37 | `result-track:023c8b91a4e5b5414f84ada4e2d9ec8a2b344ab9b828214eba7b969d5582e7f2` |
| 3 | `theorem` | [isUnit_eq_one_or](../../../../../NumberTheory/ElementaryNumberTheory/IntUnitsNamespaced.lean/declarations/isunit-eq-one-or.md) | 41 | `result-track:b66a8a4263ecf91f2913e951a8290bee3294df1600b975460b084066b1f34619` |
| 4 | `theorem` | [isUnit_iff](../../../../../NumberTheory/ElementaryNumberTheory/IntUnitsNamespaced.lean/declarations/isunit-iff.md) | 45 | `result-track:0f9424f57d260ae820f6ec1af6375edc36351a45d39fc8bbf81b7a7fe471bf1b` |
| 5 | `theorem` | [isUnit_eq_or_eq_neg](../../../../../NumberTheory/ElementaryNumberTheory/IntUnitsNamespaced.lean/declarations/isunit-eq-or-eq-neg.md) | 52 | `result-track:1ac2f4ead8b785a1f56d0837ca2234f8109a4be3d05a11ec751115738c444df9` |
| 6 | `theorem` | [eq_one_or_neg_one_of_mul_eq_one](../../../../../NumberTheory/ElementaryNumberTheory/IntUnitsNamespaced.lean/declarations/eq-one-or-neg-one-of-mul-eq-one.md) | 58 | `result-track:6be09682c62064e1bb406644ab6e4dcf56c5fae99167a27184ac3703666fd43e` |
| 7 | `theorem` | [eq_one_or_neg_one_of_mul_eq_one'](../../../../../NumberTheory/ElementaryNumberTheory/IntUnitsNamespaced.lean/declarations/eq-one-or-neg-one-of-mul-eq-one-source-edition-2.md) | 62 | `result-track:9e3a03e5f2ba81665cd612fd2eb4a4e37f84d82d5b9bee134f42ed01dfd3e156` |
| 8 | `theorem` | [eq_of_mul_eq_one](../../../../../NumberTheory/ElementaryNumberTheory/IntUnitsNamespaced.lean/declarations/eq-of-mul-eq-one.md) | 69 | `result-track:b71a9133fbd4e681dc6d4d5cdbf33e3c008e78aa2de2ec25e9bf48fbb287c802` |
| 9 | `theorem` | [mul_eq_one_iff_eq_one_or_neg_one](../../../../../NumberTheory/ElementaryNumberTheory/IntUnitsNamespaced.lean/declarations/mul-eq-one-iff-eq-one-or-neg-one.md) | 74 | `result-track:4a6f86fe9f76cac5c242001a8d039dc5c993f5c931420f8eaafbe2a1569578f9` |
| 10 | `theorem` | [eq_one_or_neg_one_of_mul_eq_neg_one'](../../../../../NumberTheory/ElementaryNumberTheory/IntUnitsNamespaced.lean/declarations/eq-one-or-neg-one-of-mul-eq-neg-one.md) | 81 | `result-track:3690589d732e524776fc768199e6d27ebe4834229136ef76cedfad06068b4c1c` |
| 11 | `theorem` | [mul_eq_neg_one_iff_eq_one_or_neg_one](../../../../../NumberTheory/ElementaryNumberTheory/IntUnitsNamespaced.lean/declarations/mul-eq-neg-one-iff-eq-one-or-neg-one.md) | 88 | `result-track:58c3f9e6f7ca42d79bdeae933401510a04bc7cf23aa4de1a8bb57a9e2cc52e0a` |
| 12 | `theorem` | [isUnit_iff_natAbs_eq](../../../../../NumberTheory/ElementaryNumberTheory/IntUnitsNamespaced.lean/declarations/isunit-iff-natabs-eq.md) | 95 | `result-track:96bacec693c299b23662f0db4785e742c6e4409b24b432854157f4121bdd61c4` |
| 13 | `theorem` | [ofNat_isUnit](../../../../../NumberTheory/ElementaryNumberTheory/IntUnitsNamespaced.lean/declarations/ofnat-isunit.md) | 105 | `result-track:57627474c0c3f54cd9fb63262182ca33c90fbd915fbfc3374fe5e89a988a2726` |
| 14 | `theorem` | [isUnit_mul_self](../../../../../NumberTheory/ElementaryNumberTheory/IntUnitsNamespaced.lean/declarations/isunit-mul-self.md) | 109 | `result-track:3fdbac3445f7c3f6e1083dbb83893128da7f61a2e7992550388162d8116675e0` |
| 15 | `theorem` | [isUnit_add_isUnit_eq_isUnit_add_isUnit](../../../../../NumberTheory/ElementaryNumberTheory/IntUnitsNamespaced.lean/declarations/isunit-add-isunit-eq-isunit-add-isunit.md) | 114 | `result-track:c9c137a25068e9a6d941081103d9a124e5c8fb9fa236e2e2e0f49b67c0643e6c` |
| 16 | `theorem` | [eq_one_or_neg_one_of_mul_eq_neg_one](../../../../../NumberTheory/ElementaryNumberTheory/IntUnitsNamespaced.lean/declarations/eq-one-or-neg-one-of-mul-eq-neg-one-source-edition-2.md) | 122 | `result-track:ef8cdfd4a61c423cff2448184c18bb3584e07bf22b1ae7cd0322147bc3757fce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f8f6d716780981f35d44004456d45f4b78be6415c643baf68f982504ac09cd1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Units/Variante39db470b31b3b6755883cfa5fd68def236b8672a7c2aa0feebe29563e78c650.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Units/Variante39db470b31b3b6755883cfa5fd68def236b8672a7c2aa0feebe29563e78c650.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
