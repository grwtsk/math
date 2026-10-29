# Verification target: Going Down Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d3c66ce1a8de8bd20064503590da69298a62f60",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GoingDown/Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/GoingDownNamespaced.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/GoingDownNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d3c66ce1a8de8bd20064503590da69298a62f60`.

Source path: `GRWTSK/Algebra/GoingDown/Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GoingDown/Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.GoingUp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.FaithfullyFlat.Algebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Localization` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Algebra.HasGoingDown](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/GoingDownNamespaced.lean/declarations/algebra-hasgoingdown.md) | 47 | `declaration-track:b76e95e889c357343b9d49b7e5f4d5bff5f008fdba1663730975a2abcaa51b78` |
| 2 | `lemma` | [Ideal.exists_ideal_le_liesOver_of_le](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/GoingDownNamespaced.lean/declarations/ideal-exists-ideal-le-liesover-of-le.md) | 53 | `result-track:3ba237fa5e9fb7a5cba2dfecd640b346a1ab594b2f14eac17b04da809f4e45ce` |
| 3 | `lemma` | [Ideal.exists_ideal_lt_liesOver_of_lt](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/GoingDownNamespaced.lean/declarations/ideal-exists-ideal-lt-liesover-of-lt.md) | 64 | `result-track:b3d53a39037da5c05852ab683492499221b33af651064fc7a6c277ee7ba863d9` |
| 4 | `lemma` | [iff_generalizingMap_primeSpectrumComap](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/GoingDownNamespaced.lean/declarations/iff-generalizingmap-primespectrumcomap.md) | 81 | `result-track:684415c20ff0985a855b6ed11dbfa7a12110af982e208e7634c16121b682fa2b` |
| 5 | `lemma` | [trans](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/GoingDownNamespaced.lean/declarations/trans.md) | 100 | `result-track:55cf1bea108fa6d0f744ad0adea12630ba71a7cf609ecaaef2e38daf7b3991a3` |
| 6 | `lemma` | [of_specComap_localRingHom_surjective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/GoingDownNamespaced.lean/declarations/of-speccomap-localringhom-surjective.md) | 111 | `result-track:746daef4e20a7f91a33bbde63fdcf777e987e05d7e2e61a6e6b203c285d24de1` |
| 7 | `instance` | [of_flat](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/GoingDownNamespaced.lean/declarations/of-flat.md) | 128 | `declaration-track:fca927a2b6d7a8aedbfe34beb093a6ba5b026c42d5a7a9352f6c87b5a89fecc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0bd634ea10b583da93fbd88c6273b7d29ffd1e601f6f1c64224480207f5111fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GoingDown/Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af.lean","GRWTSK/_verification/specifications/Algebra/GoingDown/Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
