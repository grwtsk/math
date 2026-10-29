# Verification target: FG

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91b487fb70fe127b654bd8812640545d6c7e0af0",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FG/Variant37e4eb21753f4cf48d849fa7dd5cab79ca9511a880eb8d4cbe633f8997fcc8e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FG.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FG.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91b487fb70fe127b654bd8812640545d6c7e0af0`.

Source path: `GRWTSK/Algebra/FG/Variant37e4eb21753f4cf48d849fa7dd5cab79ca9511a880eb8d4cbe633f8997fcc8e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FG/Variant37e4eb21753f4cf48d849fa7dd5cab79ca9511a880eb8d4cbe633f8997fcc8e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Int` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Eval` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fg_trans](../../../../CommutativeAlgebra/FG.lean/declarations/fg-trans.md) | 40 | `result-track:c84c681ae672ed1cd3e92ef7949e9f934357f5c0b3b74c7623dd568bc7eb9303` |
| 2 | `def` | [FG](../../../../CommutativeAlgebra/FG.lean/declarations/fg.md) | 91 | `declaration-track:d88bfaae672f31da1211d4567fec7355a2cebd09d70000b6da31d5fdc56fb3c7` |
| 3 | `theorem` | [fg_adjoin_finset](../../../../CommutativeAlgebra/FG.lean/declarations/fg-adjoin-finset.md) | 94 | `result-track:d42acf298d7634e428be1092ca7fe43402cbf13ee83e4d5d079d5ce23b4be2b2` |
| 4 | `theorem` | [fg_def](../../../../CommutativeAlgebra/FG.lean/declarations/fg-def.md) | 97 | `result-track:1fd1ac8c0b472f3d70afe039d8f4b2eb4ca60773a8dcf6e25d207f377a59641f` |
| 5 | `theorem` | [fg_bot](../../../../CommutativeAlgebra/FG.lean/declarations/fg-bot.md) | 100 | `result-track:92d6ac5cd832ebaf68a94f5cf98bd6e1cfb53ad29c25bacdadc25e28f550efdd` |
| 6 | `theorem` | [fg_of_fg_toSubmodule](../../../../CommutativeAlgebra/FG.lean/declarations/fg-of-fg-tosubmodule.md) | 103 | `result-track:74df110b44087c908f734336545755e6991a432bb4db51c20350c388d9b3b616` |
| 7 | `theorem` | [fg_of_noetherian](../../../../CommutativeAlgebra/FG.lean/declarations/fg-of-noetherian.md) | 112 | `result-track:d356d0466867952ad1432025dd711efde8d18fa3f6b9fe0ba98d2dc30b69d597` |
| 8 | `theorem` | [fg_of_submodule_fg](../../../../CommutativeAlgebra/FG.lean/declarations/fg-of-submodule-fg.md) | 115 | `result-track:209e08f652bf021daa30ae6a436f25c114fffb0874156af5e3ac1ee04cee7b85` |
| 9 | `theorem` | [FG.prod](../../../../CommutativeAlgebra/FG.lean/declarations/fg-prod.md) | 121 | `result-track:f8ffc03b4f11d6e2525e740c0d62cda43787aa3d8652473930d2296fe38cfa70` |
| 10 | `theorem` | [FG.map](../../../../CommutativeAlgebra/FG.lean/declarations/fg-map.md) | 133 | `result-track:2b72350919cfd1405f00c896696f845b7b8feeb8966250a1c2fb7d8b1f53a1b6` |
| 11 | `theorem` | [fg_of_fg_map](../../../../CommutativeAlgebra/FG.lean/declarations/fg-of-fg-map.md) | 140 | `result-track:a8bdb10201e465a2b26b532baad8dfb4791c67b9f6f18be623505e7216f966ed` |
| 12 | `theorem` | [fg_top](../../../../CommutativeAlgebra/FG.lean/declarations/fg-top.md) | 149 | `result-track:4e3ed4032eab1f13642e9a9ae86dbcbc9f4247f81918dae5c57fbcdc45a5832e` |
| 13 | `theorem` | [induction_on_adjoin](../../../../CommutativeAlgebra/FG.lean/declarations/induction-on-adjoin.md) | 157 | `result-track:d1b01b45a44f0992beceab6f1d4e601f197f6879eb59ff5488f5c5a93c188472` |
| 14 | `instance` | [AlgHom.isNoetherianRing_range](../../../../CommutativeAlgebra/FG.lean/declarations/alghom-isnoetherianring-range.md) | 176 | `declaration-track:debecfa9678fce5b24cf4ef50b942c899f30263408ac5f471111388f5dc8a52d` |
| 15 | `theorem` | [isNoetherianRing_of_fg](../../../../CommutativeAlgebra/FG.lean/declarations/isnoetherianring-of-fg.md) | 187 | `result-track:0162f073a0a6caa711aab776d0d46d78ba386332b1644121413613eda3328649` |
| 16 | `theorem` | [is_noetherian_subring_closure](../../../../CommutativeAlgebra/FG.lean/declarations/is-noetherian-subring-closure.md) | 192 | `result-track:9f6eeb1f3dbef6061b6ad3d492d9ae11e22a2ddf2141b94f2553260ad00d7d2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f889f5db56e77890eea68dc74d2259b1a0df0b4759371ef511586f655deb2248 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FG/Variant37e4eb21753f4cf48d849fa7dd5cab79ca9511a880eb8d4cbe633f8997fcc8e6.lean","GRWTSK/_verification/specifications/Algebra/FG/Variant37e4eb21753f4cf48d849fa7dd5cab79ca9511a880eb8d4cbe633f8997fcc8e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
