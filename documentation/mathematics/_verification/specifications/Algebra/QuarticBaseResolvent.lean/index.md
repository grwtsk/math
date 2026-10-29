# Verification target: GRWTSK.Algebra.QuarticBaseResolvent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfa44686c0fe9b8a12b60153737f3d2f43752be5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticBaseResolvent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Algebra/QuarticBaseResolvent.lean/index.md) · [Full source](../../../../Algebra/QuarticBaseResolvent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfa44686c0fe9b8a12b60153737f3d2f43752be5`.

Source path: `GRWTSK/Algebra/QuarticBaseResolvent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticBaseResolvent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.PolygonalQuarticSplitting`](../../../../Algebra/PolygonalQuarticSplitting.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Algebra.QuarticResolventRingNaturality`](../../../../Algebra/QuarticResolventRingNaturality.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [baseAdjacencyResolvent](../../../../Algebra/QuarticBaseResolvent.lean/declarations/baseadjacencyresolvent--441126fae9a65628bd4a45e2.md) | 28 | `declaration-track:441126fae9a65628bd4a45e272f4100e10314bb95049b997f2e32d231ccfc525` |
| 2 | `theorem` | [baseAdjacencyResolvent_ringHom_map](../../../../Algebra/QuarticBaseResolvent.lean/declarations/baseadjacencyresolvent-ringhom-map--a1aee8b010dc02d5d52e77a4.md) | 33 | `result-track:a1aee8b010dc02d5d52e77a455292a48c2e97f429b62475566f3a205259a09e8` |
| 3 | `theorem` | [baseAdjacencyResolvent_map](../../../../Algebra/QuarticBaseResolvent.lean/declarations/baseadjacencyresolvent-map--abb3cfc13c4e39f174029ed0.md) | 41 | `result-track:abb3cfc13c4e39f174029ed08b9911c6b79cc4ed869468daa3bf1a60ef80ba64` |
| 4 | `theorem` | [actual_quartic_base_resolvent](../../../../Algebra/QuarticBaseResolvent.lean/declarations/actual-quartic-base-resolvent--6ed178c555aeb8156e5500e5.md) | 51 | `result-track:6ed178c555aeb8156e5500e50350589a5edda1de6cce9dbb24a1a6f808866568` |
| 5 | `theorem` | [actual_quartic_base_resolvent_order_independent](../../../../Algebra/QuarticBaseResolvent.lean/declarations/actual-quartic-base-resolvent-order-independent--191b651f2366d52b64222824.md) | 69 | `result-track:191b651f2366d52b642228240305b625116f4a3896c72722e92ba7b35594ba95` |
| 6 | `theorem` | [actual_quartic_base_resolvent_in_splitting_field](../../../../Algebra/QuarticBaseResolvent.lean/declarations/actual-quartic-base-resolvent-in-splitting-field--29f4debe5958d02fa61abd1b.md) | 77 | `result-track:29f4debe5958d02fa61abd1b54ec76632a7558eafadf67229dfd73afecb43a9a` |
| 7 | `theorem` | [baseAdjacencyResolvent_map_tower](../../../../Algebra/QuarticBaseResolvent.lean/declarations/baseadjacencyresolvent-map-tower--d80d2930f5c995539d72cc93.md) | 91 | `result-track:d80d2930f5c995539d72cc936c0ad483b97d8712cd402f686371ea4b083e874c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=829797b5e5781006d3df79fc7b9cef769975241b5da653420b918de9877130d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/QuarticBaseResolvent.lean","GRWTSK/_verification/specifications/Algebra/QuarticBaseResolvent.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
