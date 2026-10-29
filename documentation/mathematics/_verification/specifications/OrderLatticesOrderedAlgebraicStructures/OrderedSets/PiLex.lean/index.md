# Verification target: Pi Lex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca796cb3a890d26067cb931691e1177c210f5ce4",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant9a53605d4b24fd03cd7038f2d16343ae927c94d7f70572f5d63cd97d51f4afa5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca796cb3a890d26067cb931691e1177c210f5ce4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant9a53605d4b24fd03cd7038f2d16343ae927c94d7f70572f5d63cd97d51f4afa5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant9a53605d4b24fd03cd7038f2d16343ae927c94d7f70572f5d63cd97d51f4afa5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.WellFounded` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/lex.md) | 37 | `declaration-track:74e1c215d27e5c5a47d1a3a3a16df32681a59a93fb440b80a90048d2489efae1` |
| 2 | `theorem` | [toLex_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/tolex-apply.md) | 46 | `result-track:ecc4006a3a4776aea7c30dba4e72e15afcdc43539b0dba02a39f3a8af71aea60` |
| 3 | `theorem` | [ofLex_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/oflex-apply.md) | 50 | `result-track:c6932491efa4b71f654b87b9691a8f196ea454d9fe39571d3c195394e3daa146` |
| 4 | `theorem` | [lex_lt_of_lt_of_preorder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/lex-lt-of-lt-of-preorder.md) | 53 | `result-track:99ac4b4c8391aaeb712a93c02011dde3e527d3a0c1672cdefa0bb3fe29d4d17f` |
| 5 | `theorem` | [lex_lt_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/lex-lt-of-lt.md) | 59 | `result-track:643b6b20c7cab89350ebee14ae448ca1d7f63f036e6277855fab1b9f6a4e69dc` |
| 6 | `theorem` | [isTrichotomous_lex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/istrichotomous-lex.md) | 64 | `result-track:3f6167a6016a0252c167c49bc4f9173068ae206689e6ff72ad38ea8309bc6b66` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/instance.md) | 80 | `declaration-track:2f34d064c2fdd18495b6479a48f926d6d9e6f86bce172088c5e554fd09dca487` |
| 8 | `instance` | [Lex.isStrictOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/lex-isstrictorder.md) | 83 | `declaration-track:6115e53836a5a7369a6505531e5a52939c1335aa4ab01d32abcc27dcc843f762` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/instance-source-edition-3.md) | 93 | `declaration-track:88aae47fe90b28aea49e79ddd7606a381ec5c42fef87beed5b2ebb0c01effb44` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/instance-source-edition-2.md) | 97 | `declaration-track:66d633482ff347082885969abc2fccd2125748e07967381946e0d0bf4a773591` |
| 11 | `theorem` | [toLex_monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/tolex-monotone.md) | 109 | `result-track:3ee4974527b5040df288ca0e15818a3bba739c1e8ee07cadc4e1b04908892c85` |
| 12 | `theorem` | [toLex_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/tolex-strictmono.md) | 117 | `result-track:5b536415df9059a6754ccec32e2b7cc4287ef0ea881d00c35d14c85f75dc99ca` |
| 13 | `theorem` | [lt_toLex_update_self_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/lt-tolex-update-self-iff.md) | 125 | `result-track:ddd476a86bf62f609e875571fb3b62a24edbd778879a5b1f59e3e391a24cef5f` |
| 14 | `theorem` | [toLex_update_lt_self_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/tolex-update-lt-self-iff.md) | 136 | `result-track:bf9e9805806cf6cecae51c77829848dd961dab82911894c301ab626ac5217d16` |
| 15 | `theorem` | [le_toLex_update_self_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/le-tolex-update-self-iff.md) | 147 | `result-track:c57deffdb13e7882581a211870706e808df0ac3cf7701ff8236b71ded76fbecc` |
| 16 | `theorem` | [toLex_update_le_self_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/tolex-update-le-self-iff.md) | 151 | `result-track:2320902e16cb0e4ed0da29717a83de67ce3660cfc87f326c86218cfe1a336c31` |
| 17 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/instance-source-edition-8.md) | 156 | `declaration-track:d8073c6827fc078aa589ea7f8acaef7792c959da3cdb06706f1149e5b589d516` |
| 18 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/instance-source-edition-5.md) | 161 | `declaration-track:bfb27d3913ee79a2b0d301ec91dd4de01655cfc14880a689409ebea2cdf66710` |
| 19 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/instance-source-edition-7.md) | 166 | `declaration-track:c1e551aaf9fdb3f56f0c9e6222c2647f2db8f10b27dd7890135397af973e3587` |
| 20 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/instance-source-edition-6.md) | 170 | `declaration-track:bfe7ba80a7b7a5c087089adf226e03db2e61746c44bc466307ff30dd71847470` |
| 21 | `theorem` | [Lex.noMaxOrder'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/lex-nomaxorder.md) | 184 | `result-track:4bc68f64b12e054761e95af5d5f0e34a3dfcfddeed7227092c69f8f6bd8987ed` |
| 22 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/instance-source-edition-9.md) | 192 | `declaration-track:dde5d81b24205804869d2f0653091b075678563760a7127a9ecdf1ed3897e60d` |
| 23 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/instance-source-edition-4.md) | 198 | `declaration-track:a5a31b0f613a3127b6261f6b8feb9d51418f2c342070c8318d965f4927e9655c` |
| 24 | `theorem` | [lex_desc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PiLex.lean/declarations/lex-desc.md) | 206 | `result-track:29917859ae5d098fcc75ca5ca51ab17a4858bc3be935791d754e34b94eebabad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50e3fe785db3e320a4ff67ef882376149550b1d83c838944e933b6d8d2747a6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant9a53605d4b24fd03cd7038f2d16343ae927c94d7f70572f5d63cd97d51f4afa5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/PiLex/Variant9a53605d4b24fd03cd7038f2d16343ae927c94d7f70572f5d63cd97d51f4afa5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
