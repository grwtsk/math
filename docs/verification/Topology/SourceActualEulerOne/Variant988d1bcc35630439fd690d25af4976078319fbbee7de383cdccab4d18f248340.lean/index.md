# Verification target: GRWTSK.Topology.SourceActualEulerOne.Variant988d1bcc35630439fd690d25af4976078319fbbee7de383cdccab4d18f248340

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24b320a7366b93edd03eacd0d3a865cf6872e43c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/SourceActualEulerOne/Variant988d1bcc35630439fd690d25af4976078319fbbee7de383cdccab4d18f248340.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/SourceActualEulerOne/Variant988d1bcc35630439fd690d25af4976078319fbbee7de383cdccab4d18f248340.lean/index.md) · [Full source](../../../../mathematics/Topology/SourceActualEulerOne/Variant988d1bcc35630439fd690d25af4976078319fbbee7de383cdccab4d18f248340.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24b320a7366b93edd03eacd0d3a865cf6872e43c`.

Source path: `GRWTSK/Topology/SourceActualEulerOne/Variant988d1bcc35630439fd690d25af4976078319fbbee7de383cdccab4d18f248340.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/SourceActualEulerOne/Variant988d1bcc35630439fd690d25af4976078319fbbee7de383cdccab4d18f248340.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.ZetaBounds` — import line 1; external provider; requires a separately pinned dependency.
- `Zeta23.Statement.SeamClosed` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Floor` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [periodicB1](../../../../mathematics/Topology/SourceActualEulerOne/Variant988d1bcc35630439fd690d25af4976078319fbbee7de383cdccab4d18f248340.lean/declarations/periodicb1--6c50c83bf31db482a383107b.md) | 20 | `declaration-track:6c50c83bf31db482a383107b39f46b3b648fb8ae6d1ab4c3107ee344a24501a1` |
| 2 | `def` | [periodicB2](../../../../mathematics/Topology/SourceActualEulerOne/Variant988d1bcc35630439fd690d25af4976078319fbbee7de383cdccab4d18f248340.lean/declarations/periodicb2--bc7e992ddb198ac7178cc77d.md) | 22 | `declaration-track:bc7e992ddb198ac7178cc77daae591b8a92401677d72911828632d323d1b665a` |
| 3 | `theorem` | [sourceFloorWeight_eq_neg_periodicB1](../../../../mathematics/Topology/SourceActualEulerOne/Variant988d1bcc35630439fd690d25af4976078319fbbee7de383cdccab4d18f248340.lean/declarations/sourcefloorweight-eq-neg-periodicb1--e80e1f9ed1e261cf381f3ae6.md) | 25 | `result-track:e80e1f9ed1e261cf381f3ae6c176e4cdb591220af51f13c01e01632bfabfdb0c` |
| 4 | `theorem` | [periodicB2_bounds](../../../../mathematics/Topology/SourceActualEulerOne/Variant988d1bcc35630439fd690d25af4976078319fbbee7de383cdccab4d18f248340.lean/declarations/periodicb2-bounds--b5ae1864b7ef02ba6e723d6e.md) | 30 | `result-track:b5ae1864b7ef02ba6e723d6ecdc23cd86cb209a058c60631d9921b32aa6daaf1` |
| 5 | `theorem` | [periodicB2_abs_le](../../../../mathematics/Topology/SourceActualEulerOne/Variant988d1bcc35630439fd690d25af4976078319fbbee7de383cdccab4d18f248340.lean/declarations/periodicb2-abs-le--05d95d14a5ffb173119e16fd.md) | 40 | `result-track:05d95d14a5ffb173119e16fdba4db64125ae8ca610994a0daca2c5856340f14f` |
| 6 | `theorem` | [periodicB2_at_integer](../../../../mathematics/Topology/SourceActualEulerOne/Variant988d1bcc35630439fd690d25af4976078319fbbee7de383cdccab4d18f248340.lean/declarations/periodicb2-at-integer--d4d14552d6a9b749305d0397.md) | 44 | `result-track:d4d14552d6a9b749305d039784f75d9d6752eb9af65fb8702b832d1d65202827` |
| 7 | `theorem` | [periodicB2_continuous](../../../../mathematics/Topology/SourceActualEulerOne/Variant988d1bcc35630439fd690d25af4976078319fbbee7de383cdccab4d18f248340.lean/declarations/periodicb2-continuous--a46d886c7c36c96c352672b1.md) | 48 | `result-track:a46d886c7c36c96c352672b1ad3b7af909336e947c31b4d1e964abbadf04990a` |
| 8 | `theorem` | [periodicB2_hasDerivAt](../../../../mathematics/Topology/SourceActualEulerOne/Variant988d1bcc35630439fd690d25af4976078319fbbee7de383cdccab4d18f248340.lean/declarations/periodicb2-hasderivat--5d7b2dc924eb701c582aa2c9.md) | 57 | `result-track:5d7b2dc924eb701c582aa2c956c6697650a4ef97091dd55894906bc7c7cf8b99` |
| 9 | `theorem` | [periodicB2_ae_hasDerivAt](../../../../mathematics/Topology/SourceActualEulerOne/Variant988d1bcc35630439fd690d25af4976078319fbbee7de383cdccab4d18f248340.lean/declarations/periodicb2-ae-hasderivat--4d74f6826ba86b482de6825f.md) | 73 | `result-track:4d74f6826ba86b482de6825f957e6fe9b16a091fa5b2ce1675215726eaee8db7` |
| 10 | `theorem` | [actual_zeta_euler_one](../../../../mathematics/Topology/SourceActualEulerOne/Variant988d1bcc35630439fd690d25af4976078319fbbee7de383cdccab4d18f248340.lean/declarations/actual-zeta-euler-one--ab6cc3b41d3b6c99132a9097.md) | 81 | `result-track:ab6cc3b41d3b6c99132a90974b15f300dc0789ff5a441371681cc12721666c4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
