# Verification target: GRWTSK.Algebra.Algebra.Variant6afad0671382a8f290f3af486eab2b019c1412775930ca97b6d55b1f5534395e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1cfa82e40d01e5ea7bc34e69efac167d13ee543",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Algebra/Variant6afad0671382a8f290f3af486eab2b019c1412775930ca97b6d55b1f5534395e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Algebra/Algebra/Variant6afad0671382a8f290f3af486eab2b019c1412775930ca97b6d55b1f5534395e.lean/index.md) · [Full source](../../../../../Algebra/Algebra/Variant6afad0671382a8f290f3af486eab2b019c1412775930ca97b6d55b1f5534395e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1cfa82e40d01e5ea7bc34e69efac167d13ee543`.

Source path: `GRWTSK/Algebra/Algebra/Variant6afad0671382a8f290f3af486eab2b019c1412775930ca97b6d55b1f5534395e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Algebra/Variant6afad0671382a8f290f3af486eab2b019c1412775930ca97b6d55b1f5534395e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Flat.FaithfullyFlat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Over` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.RingHom.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.RingHom` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Quotient` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Module.FaithfullyFlat.of_specComap_surjective](../../../../../Algebra/Algebra/Variant6afad0671382a8f290f3af486eab2b019c1412775930ca97b6d55b1f5534395e.lean/declarations/module-faithfullyflat-of-speccomap-surjective--ed262993f347d038f8d5b69b.md) | 54 | `result-track:ed262993f347d038f8d5b69b9959d0e3206a9df94ed83447209ba8123c7e71c1` |
| 2 | `lemma` | [Module.FaithfullyFlat.of_flat_of_isLocalHom](../../../../../Algebra/Algebra/Variant6afad0671382a8f290f3af486eab2b019c1412775930ca97b6d55b1f5534395e.lean/declarations/module-faithfullyflat-of-flat-of-islocalhom--add23ab321a2c2e799a58971.md) | 66 | `result-track:add23ab321a2c2e799a5897121bea5b942b6ff3543d90beb488340ec96168463` |
| 3 | `lemma` | [Module.FaithfullyFlat.tensorProduct_mk_injective](../../../../../Algebra/Algebra/Variant6afad0671382a8f290f3af486eab2b019c1412775930ca97b6d55b1f5534395e.lean/declarations/module-faithfullyflat-tensorproduct-mk-injective--f0864d87840ad335d0fae31e.md) | 81 | `result-track:f0864d87840ad335d0fae31ed51bc14c68892d212fcf85ba0aa9d8602a541413` |
| 4 | `lemma` | [Ideal.comap_map_eq_self_of_faithfullyFlat](../../../../../Algebra/Algebra/Variant6afad0671382a8f290f3af486eab2b019c1412775930ca97b6d55b1f5534395e.lean/declarations/ideal-comap-map-eq-self-of-faithfullyflat--391f8847c493808b8223b859.md) | 95 | `result-track:391f8847c493808b8223b859d434814991ace4ec25494e2d71e1182684f6072c` |
| 5 | `lemma` | [Ideal.comap_surjective_of_faithfullyFlat](../../../../../Algebra/Algebra/Variant6afad0671382a8f290f3af486eab2b019c1412775930ca97b6d55b1f5534395e.lean/declarations/ideal-comap-surjective-of-faithfullyflat--402955a81599553a0a4b8bc2.md) | 115 | `result-track:402955a81599553a0a4b8bc2f4ee97d5fc9effcef61344f1662c3c8ede104d61` |
| 6 | `lemma` | [Ideal.exists_isPrime_liesOver_of_faithfullyFlat](../../../../../Algebra/Algebra/Variant6afad0671382a8f290f3af486eab2b019c1412775930ca97b6d55b1f5534395e.lean/declarations/ideal-exists-isprime-liesover-of-faithfullyflat--66914f06a3cba668e40df9da.md) | 120 | `result-track:66914f06a3cba668e40df9da42f7114745e57e5684abf81a01c079a680025994` |
| 7 | `lemma` | [PrimeSpectrum.specComap_surjective_of_faithfullyFlat](../../../../../Algebra/Algebra/Variant6afad0671382a8f290f3af486eab2b019c1412775930ca97b6d55b1f5534395e.lean/declarations/primespectrum-speccomap-surjective-of-faithfullyflat--5319b202496cc725d7f36c1a.md) | 128 | `result-track:5319b202496cc725d7f36c1a62e04b8ecaf7b9f12cf3f9609815610e20021488` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=299226e3da843d6508348b5197c065608ff354ba1118d4e3c75a1e4b7614683d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Algebra/Variant6afad0671382a8f290f3af486eab2b019c1412775930ca97b6d55b1f5534395e.lean","GRWTSK/_verification/specifications/Algebra/Algebra/Variant6afad0671382a8f290f3af486eab2b019c1412775930ca97b6d55b1f5534395e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
