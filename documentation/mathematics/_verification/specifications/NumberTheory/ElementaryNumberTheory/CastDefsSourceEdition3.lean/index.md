# Verification target: Cast Defs Source Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04c3f767df933d17300c6c404e72e48106984d62",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante142c288374186f58108bf90633fd88c93eb21a1d64251a0eed58370a0ef9c39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04c3f767df933d17300c6c404e72e48106984d62`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante142c288374186f58108bf90633fd88c93eb21a1d64251a0eed58370a0ef9c39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante142c288374186f58108bf90633fd88c93eb21a1d64251a0eed58370a0ef9c39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SplitIfs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.OfNat` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nat.unaryCast](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/nat-unarycast.md) | 29 | `declaration-track:8d69e00c29e38937f89eba5a163d38e008205b4d15b6ab0ddee0d5f569301fb3` |
| 2 | `class` | [Nat.AtLeastTwo](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/nat-atleasttwo.md) | 37 | `declaration-track:7e2bb7a7fd929c9439f409eba8342854c258ab4678e14433399e4e67ca5b1ce8` |
| 3 | `instance` | [instNatAtLeastTwo](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/instnatatleasttwo.md) | 40 | `declaration-track:299f3909bac448bfd0b67835a377ddcd97cbc0ac43f4534e366667c150bb3c85` |
| 4 | `lemma` | [one_lt](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/one-lt.md) | 47 | `result-track:78c0d4cb7a83516c22d09945118de06344aa3c7000f2e81b293ffa3f45ec1dd4` |
| 5 | `lemma` | [ne_one](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/ne-one.md) | 48 | `result-track:da05005af88901cd7706d3d7b8127ffa067b0f72aa2f194abcc7796c4209779d` |
| 6 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/instance.md) | 57 | `declaration-track:358bddac3d6599a08e694a143ef63b86806f8176931d12d917ab78606e63674e` |
| 7 | `theorem` | [Nat.cast_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/nat-cast-ofnat.md) | 72 | `result-track:72e057cf530927377c8ff9faee418c5611b5cf6b706911b05ce70996d7416370` |
| 8 | `theorem` | [Nat.cast_eq_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/nat-cast-eq-ofnat.md) | 76 | `result-track:571f9f1c1cf8b2eb1e3391abef9bfb31b1a3ef7a3e22b22404f0fdb07a115308` |
| 9 | `class` | [AddMonoidWithOne](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/addmonoidwithone.md) | 84 | `declaration-track:39de473ee08736013f8db76f113cf6f5cf30566a5f1db2fada049be3b672284b` |
| 10 | `class` | [AddCommMonoidWithOne](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/addcommmonoidwithone.md) | 92 | `declaration-track:a7d5f8c84b8b78795da59e5c0108455b3512f1636aa814e7c14d2f045daceee3` |
| 11 | `theorem` | [cast_zero](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/cast-zero.md) | 115 | `result-track:33ba15d010613cf3595e854f7d31fb7a231a6fdff248e5fa79855f0ef62ec189` |
| 12 | `theorem` | [cast_succ](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/cast-succ.md) | 122 | `result-track:d928fc18c178e82f03530ce7e92e61044134ac5b5977ae2a56f3f789162a9345` |
| 13 | `theorem` | [cast_add_one](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/cast-add-one.md) | 125 | `result-track:2e80ed214bd37a56916dcab6f51888019aabffb7565c64e36d262594725d6665` |
| 14 | `theorem` | [cast_ite](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/cast-ite.md) | 129 | `result-track:c3cd60debeed04b108a06f5ca6ecd6c0ec14f1fe48355931ccf8fcd9a36b29cd` |
| 15 | `theorem` | [cast_one](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/cast-one.md) | 138 | `result-track:51c19facb1303102f0d1b998bd92cdac73a3b61fa9f5d533cdd1601dc87b9477` |
| 16 | `theorem` | [cast_add](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/cast-add.md) | 142 | `result-track:0d035923d806ad801b8d8fb54ff7eda9616dfad95af4a0fff52c335910e7a548` |
| 17 | `def` | [binCast](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/bincast.md) | 148 | `declaration-track:6cf5635908df51f6ac24a53b9fa37e88aa44a14d8d3f3ba654525e9a1561f5de` |
| 18 | `theorem` | [binCast_eq](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/bincast-eq.md) | 155 | `result-track:fd643ee553eb03f97ddb6dc279b4cd905a807d593f4e8cdfc24553d254679aca` |
| 19 | `theorem` | [cast_two](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/cast-two.md) | 172 | `result-track:c934ca50782a4d920dec8085f829ca580b0f45b0cda277bef6fab9041f9407e9` |
| 20 | `theorem` | [cast_three](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/cast-three.md) | 174 | `result-track:2bcac5c5dfa3e964215d76a740d8a75d7d57df52da35a892c92c4d7d497bf8dd` |
| 21 | `theorem` | [cast_four](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/cast-four.md) | 176 | `result-track:a9f3a49c42bc9d7953540806feddd49b27656be4ec1a8a52f20da500ecd5a319` |
| 22 | `abbrev` | [AddMonoidWithOne.unary](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/addmonoidwithone-unary.md) | 183 | `declaration-track:cb11c974e53e04b038cc05af4bfd4af34f620bfcaa41c39a9d9fb11d1b95ee22` |
| 23 | `abbrev` | [AddMonoidWithOne.binary](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/addmonoidwithone-binary.md) | 187 | `declaration-track:0791d411c52d6a3f92767279d15cd59d123e5c70936d52bc802c48d2de51e302` |
| 24 | `theorem` | [one_add_one_eq_two](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/one-add-one-eq-two.md) | 195 | `result-track:05b2cc863f1e40133074ea8daf7968fa127b77eb722b05e921d07088ad067738` |
| 25 | `theorem` | [two_add_one_eq_three](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/two-add-one-eq-three.md) | 200 | `result-track:2ae5a16e0578642ab109ce179abee5094a4dbdeb344959bf8d28aac42192b708` |
| 26 | `theorem` | [three_add_one_eq_four](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/three-add-one-eq-four.md) | 205 | `result-track:39c906118234a6590611fccc15e038317ee4038a1ba19246e82578af5d07d5c1` |
| 27 | `theorem` | [two_add_two_eq_four](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/two-add-two-eq-four.md) | 211 | `result-track:4276bdeaeb7c5aa6d02274da247b90258bea6fa4721922679dd03b09cbd71bee` |
| 28 | `lemma` | [nsmul_one](../../../../../NumberTheory/ElementaryNumberTheory/CastDefsSourceEdition3.lean/declarations/nsmul-one.md) | 217 | `result-track:a2cb724f17efbd9c5d235ef256733e66ab25fce94d81a6e84eab56a34fb5a687` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8d26587921ed665c3c4a7de01471b9d514116ae1a168e1806cf65915fc3cf9d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante142c288374186f58108bf90633fd88c93eb21a1d64251a0eed58370a0ef9c39.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante142c288374186f58108bf90633fd88c93eb21a1d64251a0eed58370a0ef9c39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
