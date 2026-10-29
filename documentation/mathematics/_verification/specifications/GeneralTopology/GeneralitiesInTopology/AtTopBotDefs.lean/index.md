# Verification target: At Top Bot Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78a7172c9a4767ae8952dc879f3af8c0a529d01f",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Defs/Variant2a512091da00bd267f418e912133435a7a1cc7f7b12ef0305085a011ac24b91b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78a7172c9a4767ae8952dc879f3af8c0a529d01f`.

Source path: `GRWTSK/Topology/GeneralTopology/Defs/Variant2a512091da00bd267f418e912133435a7a1cc7f7b12ef0305085a011ac24b91b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Defs/Variant2a512091da00bd267f418e912133435a7a1cc7f7b12ef0305085a011ac24b91b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Piecewise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/attop.md) | 30 | `declaration-track:be5997b0e2e2b2cf6a4be79c4a72918ff4ab965c7d527ba8ebc2c63f3ff25e59` |
| 2 | `def` | [atBot](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/atbot.md) | 37 | `declaration-track:2f3c9e3c9f215e8a3b1d7c442ecaedf4327b0a99ad2856d392fed774e565eba1` |
| 3 | `theorem` | [mem_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/mem-attop.md) | 40 | `result-track:bd1a5a5dca60288a59d51adc08119be16f817956eb4578723d808dc3fe735892` |
| 4 | `theorem` | [Ici_mem_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/ici-mem-attop.md) | 43 | `result-track:b1d2dae8d903f97a9956afad9fa22e60ce1857618aa56efa8e32d73740214326` |
| 5 | `theorem` | [Ioi_mem_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/ioi-mem-attop.md) | 46 | `result-track:5213c1983d6931473c207c2d720361d6afcfe634c445142640e380b991e68645` |
| 6 | `theorem` | [mem_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/mem-atbot.md) | 51 | `result-track:59784262e04a07fa499dcb727c267e457edd2995b8286236654b00ef4bf3fb07` |
| 7 | `theorem` | [Iic_mem_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/iic-mem-atbot.md) | 54 | `result-track:59f3d824061146be6fa3055c92aa1814b49912fa8bc5dae432e4d0d032ce20b1` |
| 8 | `theorem` | [Iio_mem_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/iio-mem-atbot.md) | 57 | `result-track:18aaaefa8cd0b44d56f54789ed910d5fb55af8dd47826e3c8984b7e206bf3bfc` |
| 9 | `theorem` | [eventually_ge_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/eventually-ge-attop.md) | 62 | `result-track:bbeeae7c16912c88e5f4019a0e4ee7021d89cf61ae37613ae64621b940f1ee25` |
| 10 | `theorem` | [eventually_le_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/eventually-le-atbot.md) | 65 | `result-track:aff942f22e827940646af3594a600540c26ebe1881e106625af37be03e5180ef` |
| 11 | `theorem` | [eventually_gt_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/eventually-gt-attop.md) | 68 | `result-track:c49884b9967e4df7dfcd8c922ad42de42901a01b599b7ae274f05838f0a3519e` |
| 12 | `theorem` | [eventually_ne_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/eventually-ne-attop.md) | 71 | `result-track:9f1e46db3d6ac921a218508b2f85a0bf570c042ddd8c9e667a4923ed9baf7cd4` |
| 13 | `theorem` | [eventually_lt_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/eventually-lt-atbot.md) | 74 | `result-track:ac5c2bf4edc5051096c9e022923fde04e248d8e20b5ddac790b028f38c89603f` |
| 14 | `theorem` | [eventually_ne_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/eventually-ne-atbot.md) | 77 | `result-track:c4f32fe6f8d320e580d45f55807ddf40b8331cf97b3e4017849327e5f7efba76` |
| 15 | `theorem` | [_root_.IsTop.atTop_eq](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/root-istop-attop-eq.md) | 80 | `result-track:12a665826854d1e75c96eacfe6f55e7e76f3550da2853635e17846f6ab32623b` |
| 16 | `theorem` | [_root_.IsBot.atBot_eq](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/root-isbot-atbot-eq.md) | 83 | `result-track:a203e464049a1d1ef515900442042c1dca6bf8b7ef03ecdba385cf7df00d9b24` |
| 17 | `theorem` | [atTop_eq_generate_Ici](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/attop-eq-generate-ici.md) | 86 | `result-track:87674239f6121c963b603a24a83d078d2ddef5de61a6d6c6fa71dffd55f7540a` |
| 18 | `theorem` | [Frequently.forall_exists_of_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/frequently-forall-exists-of-attop.md) | 89 | `result-track:92c1122256558c0254797da6d083ada7c6eda6e81805f12c423f0ba68a977eb8` |
| 19 | `theorem` | [Frequently.forall_exists_of_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/frequently-forall-exists-of-atbot.md) | 95 | `result-track:bafecb02f2f3c8cc9df254f994d602e2c463f25b31e088bc4d50d73979e1f04e` |
| 20 | `lemma` | [atTop_eq_generate_of_forall_exists_le](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/attop-eq-generate-of-forall-exists-le.md) | 99 | `result-track:18e8878e13f40fd7b24daf95d3b2fbe2a742bff07273ced96d5b6a7af0718280` |
| 21 | `lemma` | [atTop_eq_generate_of_not_bddAbove](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/attop-eq-generate-of-not-bddabove.md) | 113 | `result-track:d6ae6ea2d89e0d2d7a795f01aee0a3968fd21ea0f42d57fb8701acbf51b2f508` |
| 22 | `theorem` | [Monotone.piecewise_eventually_eq_iUnion](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/monotone-piecewise-eventually-eq-iunion.md) | 123 | `result-track:ce49e82233a087df8e0d8bb56ba5da1e1b983f372170ed40e5f4d45e6528a4f4` |
| 23 | `theorem` | [Antitone.piecewise_eventually_eq_iInter](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotDefs.lean/declarations/antitone-piecewise-eventually-eq-iinter.md) | 134 | `result-track:c667117214dabd88e565a23c35fd3dcb088ae89f5e8350d847ddd7146ee02584` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1dabba6c4b9fdf359c829df569d3e87a1060cd4983315752f17d81f992ab6e0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Defs/Variant2a512091da00bd267f418e912133435a7a1cc7f7b12ef0305085a011ac24b91b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Defs/Variant2a512091da00bd267f418e912133435a7a1cc7f7b12ef0305085a011ac24b91b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
