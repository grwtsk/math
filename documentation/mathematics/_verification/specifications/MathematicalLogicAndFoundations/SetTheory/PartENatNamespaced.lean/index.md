# Verification target: Part ENat Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b82854d661248cedaa8dab5e76494136770e523a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/PartENatNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/PartENatNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b82854d661248cedaa8dab5e76494136770e523a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.ToNat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PartENat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toPartENat](../../../../../MathematicalLogicAndFoundations/SetTheory/PartENatNamespaced.lean/declarations/topartenat.md) | 34 | `declaration-track:dbd6fed2de334983aa9f9f0da2814add62de61cd03ba3b7d24602fb36667c070` |
| 2 | `theorem` | [partENatOfENat_toENat](../../../../../MathematicalLogicAndFoundations/SetTheory/PartENatNamespaced.lean/declarations/partenatofenat-toenat.md) | 41 | `result-track:a043462fe3f7122899442a4db629f2ae96bdd087a2e09bdc9837497df9440ea4` |
| 3 | `theorem` | [toPartENat_natCast](../../../../../MathematicalLogicAndFoundations/SetTheory/PartENatNamespaced.lean/declarations/topartenat-natcast.md) | 44 | `result-track:6c8ba84c7c5be0599fa00c429733f8d6b8dfa9655be854691de4c267be663c8a` |
| 4 | `theorem` | [toPartENat_apply_of_lt_aleph0](../../../../../MathematicalLogicAndFoundations/SetTheory/PartENatNamespaced.lean/declarations/topartenat-apply-of-lt-aleph0.md) | 47 | `result-track:1b76726f9e8c71f6fa548fc7be8fb05fb46eb3a2a28eaae5452682857a973a09` |
| 5 | `theorem` | [toPartENat_eq_top](../../../../../MathematicalLogicAndFoundations/SetTheory/PartENatNamespaced.lean/declarations/topartenat-eq-top.md) | 50 | `result-track:f2477eaba349697780a32b5ef7ba9d6f70a0ca074a9a09df3e731ee96a7f9fca` |
| 6 | `theorem` | [toPartENat_apply_of_aleph0_le](../../../../../MathematicalLogicAndFoundations/SetTheory/PartENatNamespaced.lean/declarations/topartenat-apply-of-aleph0-le.md) | 56 | `result-track:978cc9ff32a3cbee27e8682137ec490b472ca4bce5417d55aff9b0e498678414` |
| 7 | `theorem` | [mk_toPartENat_of_infinite](../../../../../MathematicalLogicAndFoundations/SetTheory/PartENatNamespaced.lean/declarations/mk-topartenat-of-infinite.md) | 60 | `result-track:c6ca3682bc3e7131d82ae619e18a157da5ae4fde4e68cc02435ee21eb2506e2a` |
| 8 | `theorem` | [aleph0_toPartENat](../../../../../MathematicalLogicAndFoundations/SetTheory/PartENatNamespaced.lean/declarations/aleph0-topartenat.md) | 64 | `result-track:f25db80dc604d92b7b68d834c2c000a625f98d3406a2b936344260ee2fb76cb4` |
| 9 | `theorem` | [toPartENat_surjective](../../../../../MathematicalLogicAndFoundations/SetTheory/PartENatNamespaced.lean/declarations/topartenat-surjective.md) | 67 | `result-track:05cc6fc090e39f926769ac3b259f7b9397523ff77066014633b8a1c518407c55` |
| 10 | `theorem` | [toPartENat_strictMonoOn](../../../../../MathematicalLogicAndFoundations/SetTheory/PartENatNamespaced.lean/declarations/topartenat-strictmonoon.md) | 71 | `result-track:594c576f1b8f8f4ba87ecc8cc3b0f16e5dbc6e74f41a5a9392d38d412b6430bd` |
| 11 | `lemma` | [toPartENat_le_iff_of_le_aleph0](../../../../../MathematicalLogicAndFoundations/SetTheory/PartENatNamespaced.lean/declarations/topartenat-le-iff-of-le-aleph0.md) | 74 | `result-track:5b46ff37c47c6557159d2c41d33ddff6381e2ef64f254f6598b3dfe210bfdc51` |
| 12 | `lemma` | [toPartENat_le_iff_of_lt_aleph0](../../../../../MathematicalLogicAndFoundations/SetTheory/PartENatNamespaced.lean/declarations/topartenat-le-iff-of-lt-aleph0.md) | 80 | `result-track:940632b7e4fc4cac24c6bb7b9728fda06e534980acc602959641c00c6bc98810` |
| 13 | `lemma` | [toPartENat_inj_of_le_aleph0](../../../../../MathematicalLogicAndFoundations/SetTheory/PartENatNamespaced.lean/declarations/topartenat-inj-of-le-aleph0.md) | 86 | `result-track:b9ae9d21d63afc78c12d5db945622e2d8ee7f66375ba1a01a664d579b3cf37d9` |
| 14 | `theorem` | [toPartENat_mono](../../../../../MathematicalLogicAndFoundations/SetTheory/PartENatNamespaced.lean/declarations/topartenat-mono.md) | 93 | `result-track:c80d67286de50b3c1e972fcac3d6aed5de61a77af815121dee334d00e5072798` |
| 15 | `theorem` | [toPartENat_lift](../../../../../MathematicalLogicAndFoundations/SetTheory/PartENatNamespaced.lean/declarations/topartenat-lift.md) | 97 | `result-track:c31caa3cca7df24e4c9eb7cc163435a80b2d539f202f889da52321171e454e18` |
| 16 | `theorem` | [toPartENat_congr](../../../../../MathematicalLogicAndFoundations/SetTheory/PartENatNamespaced.lean/declarations/topartenat-congr.md) | 100 | `result-track:4e951b3c26852da8d6f1cca840b3ddc2ddadbc276e1a63caa3d95ee1d46f1899` |
| 17 | `theorem` | [mk_toPartENat_eq_coe_card](../../../../../MathematicalLogicAndFoundations/SetTheory/PartENatNamespaced.lean/declarations/mk-topartenat-eq-coe-card.md) | 103 | `result-track:c643cb60db915a1e63034dddd584b2ccb52dfa0c63ea62c8d0e6fddf3ad40411` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=74226b75104a182bd0a7b8f93e406cb610cdf04afd0261230923aec7993bca17 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
