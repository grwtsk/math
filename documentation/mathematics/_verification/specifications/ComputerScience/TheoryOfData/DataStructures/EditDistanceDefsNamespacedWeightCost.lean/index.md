# Verification target: Edit Distance Defs Namespaced Weight Cost

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6c8a5a7ba40cddbd0f5a99a9280da010075a8dd",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant4aa22c8821319a7d4e3666d6670e57290ea63b4f23e69603c3acbf8178187864.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6c8a5a7ba40cddbd0f5a99a9280da010075a8dd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant4aa22c8821319a7d4e3666d6670e57290ea63b4f23e69603c3acbf8178187864.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant4aa22c8821319a7d4e3666d6670e57290ea63b4f23e69603c3acbf8178187864.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Cost](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/cost.md) | 54 | `declaration-track:6ad385abc40b080d95cf743ff4bf7269480b7ccc0e9c0313d9d4eba7a556a9c8` |
| 2 | `def` | [defaultCost](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/defaultcost.md) | 64 | `declaration-track:e407576b8eb522470f98f8d16c42bae4aa20a539abc095616675026249289d62` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/instance.md) | 69 | `declaration-track:ad174f1b5936c63f5d5963b4e1d71b6cc081f1f05bbf6e2163ccb359c920f458` |
| 4 | `def` | [weightCost](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/weightcost.md) | 76 | `declaration-track:d1223eb8939155ac9f191e2f3bee2c8c3c13f94107b8078f41236f1226bdb4f2` |
| 5 | `def` | [stringLengthCost](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/stringlengthcost.md) | 85 | `declaration-track:b3ae27237d53101dfb28674772499568527d18bf5ba50d362bbb9488958265b4` |
| 6 | `def` | [stringLogLengthCost](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/stringloglengthcost.md) | 91 | `declaration-track:7f09cbbd3dd1fd477e84660d5b0bec09a9b2896340706bfd5460f497cbdfff1c` |
| 7 | `def` | [impl](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/impl.md) | 107 | `declaration-track:d3e862a622224e4656a7ef0d3a1fa2c5230cf52f06824bd89c3d5d1fb0fcc173` |
| 8 | `theorem` | [impl_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/impl-cons.md) | 120 | `result-track:5809d16d2f52002897ff427b645a0c5c885b27eb9118533ae3656349cd50b41e` |
| 9 | `theorem` | [impl_cons_fst_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/impl-cons-fst-zero.md) | 128 | `result-track:a60bc7179fc1320d1c392ca98964c3e8d91fdf51ab30d9210965e6d7e0bef35e` |
| 10 | `theorem` | [impl_length](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/impl-length.md) | 134 | `result-track:2963827e969a02af09c31d6566cf042d6078d935eb8e8b8520cde3d058d1fc4b` |
| 11 | `def` | [suffixLevenshtein](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/suffixlevenshtein.md) | 166 | `declaration-track:10325c9081b0284f40c6c877e269fddc3a00e71aa7ae9bb866f78b10051faf60` |
| 12 | `theorem` | [suffixLevenshtein_length](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/suffixlevenshtein-length.md) | 173 | `result-track:bcc24d7e2877e37f0eca0058ff6766a762d346665b915f1fcff031e2403f03c0` |
| 13 | `theorem` | [suffixLevenshtein_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/suffixlevenshtein-eq.md) | 188 | `result-track:0bbf641b56a2b7f75aa878ddb47abc5c9ed15c3b138e9d260cc8b251c37f01c6` |
| 14 | `def` | [levenshtein](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/levenshtein.md) | 206 | `declaration-track:c4537002a2ef2ecf6e4e8fcab48a751074a11b94dca19ca2ec64775443c1b3f1` |
| 15 | `theorem` | [suffixLevenshtein_nil_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/suffixlevenshtein-nil-nil.md) | 212 | `result-track:4cb130f0dee1dc5184a56d003c8a96d4aa4174e45239ee1f1d904536ccb3d6f5` |
| 16 | `theorem` | [List.eq_of_length_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/list-eq-of-length-one.md) | 216 | `result-track:ca21566f7001f8b7b43574ec8219defb62cb30f877a57ef5ad1d926a9346879d` |
| 17 | `theorem` | [suffixLevenshtein_nil'](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/suffixlevenshtein-nil.md) | 222 | `result-track:64e19b74c2430f214cfa65ca05e8d013ccafb8b84b6a08ddd733c6189fa6a1e5` |
| 18 | `theorem` | [suffixLevenshtein_cons₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/suffixlevenshtein-cons.md) | 226 | `result-track:be8fc69e21ab4aa9e71748d9c2f828b10a85adbe0e9ac2637068125ee48e7626` |
| 19 | `theorem` | [suffixLevenshtein_cons₁_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/suffixlevenshtein-cons-aux.md) | 230 | `result-track:661f02456ae3586e78cb9155c116a107d545cf476d9c065c0f63109f0ae7ddbd` |
| 20 | `theorem` | [suffixLevenshtein_cons₁](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/suffixlevenshtein-cons-source-edition-2.md) | 235 | `result-track:c4a58e5c25fb30b20533adab3b5791f2d8c09526c5b410b93aa04161bf30f85d` |
| 21 | `theorem` | [suffixLevenshtein_cons₁_fst](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/suffixlevenshtein-cons-fst.md) | 250 | `result-track:c2fce4e1d7f347f7c4830f4cf7168d3b3e51aac4f064ed75077069f9f382666c` |
| 22 | `theorem` | [suffixLevenshtein_cons_cons_fst_get_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/suffixlevenshtein-cons-cons-fst-get-zero.md) | 256 | `result-track:41924a7a2d0860e13ba014e4fcc9e9c74dae223bc86a121a4b45b8098020dff8` |
| 23 | `theorem` | [suffixLevenshtein_eq_tails_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/suffixlevenshtein-eq-tails-map.md) | 274 | `result-track:3f8f70114497ae16c62c91df945b5f76d2ad7cad33f79f89907417a083986a82` |
| 24 | `theorem` | [levenshtein_nil_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/levenshtein-nil-nil.md) | 283 | `result-track:807e27a45c1f0af79b8fb1e098d266904c48d983db0ac1a37e65b55d6123a3b3` |
| 25 | `theorem` | [levenshtein_nil_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/levenshtein-nil-cons.md) | 287 | `result-track:be124e0c0515a1a138aad810e589448d02e3c82daa6809b214204e6707584b59` |
| 26 | `theorem` | [levenshtein_cons_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/levenshtein-cons-nil.md) | 297 | `result-track:9d32b22c7193b4855438d5d4d3796018332809f4106680cc82b7abbf791ff1ca` |
| 27 | `theorem` | [levenshtein_cons_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/EditDistanceDefsNamespacedWeightCost.lean/declarations/levenshtein-cons-cons.md) | 302 | `result-track:b39956ed070f877319e5fc16a2d77543f218929d6d2e21ceb9c245317e0ac4ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7bfd43e8673b038b34a2107d1b7a53a2fa55622dfefe568a03243ee3a8c95704 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant4aa22c8821319a7d4e3666d6670e57290ea63b4f23e69603c3acbf8178187864.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant4aa22c8821319a7d4e3666d6670e57290ea63b4f23e69603c3acbf8178187864.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
