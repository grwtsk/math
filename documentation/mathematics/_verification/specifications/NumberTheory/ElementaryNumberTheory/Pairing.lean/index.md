# Verification target: Pairing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed3fe35a526b0cd3630d2f755c4cd0434a1c81fc",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Pairing/Variant3df86ff3567d5f78edd6a5ee4b98714697a5a0a4cd4a87be0ef1364f7966b597.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed3fe35a526b0cd3630d2f755c4cd0434a1c81fc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Pairing/Variant3df86ff3567d5f78edd6a5ee4b98714697a5a0a4cd4a87be0ef1364f7966b597.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Pairing/Variant3df86ff3567d5f78edd6a5ee4b98714697a5a0a4cd4a87be0ef1364f7966b597.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Notation.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Sqrt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice.Image` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pair](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/pair.md) | 34 | `declaration-track:77e3ab411c262d4feadeecfdc3afd0c6e02882f6eb741a7f7784dda4848d9a02` |
| 2 | `def` | [unpair](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/unpair.md) | 39 | `declaration-track:97ef5dcf1bbc765cfc6a470cd5699426850847087603cc1c1f5e37c8ae0b83dc` |
| 3 | `theorem` | [pair_unpair](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/pair-unpair-source-edition-2.md) | 44 | `result-track:6f8a8038c36dc25e19c4502c57015051d8d3346c14430bfc413ccd6ac9350ced` |
| 4 | `theorem` | [pair_unpair'](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/pair-unpair.md) | 53 | `result-track:476c7f974d51fe6ea0e86f1be925e22c72ffb173fc9eae158d3dbcd303959e16` |
| 5 | `theorem` | [unpair_pair](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/unpair-pair.md) | 57 | `result-track:cdf432a48c38d20b02c62ff6564a58a8cb9f91ab6b3728bcb59b45584c78580b` |
| 6 | `def` | [pairEquiv](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/pairequiv.md) | 70 | `declaration-track:43b531c5530d06fdbcbc6ea4cb410faa018e1eb8bc03205a099097a339299319` |
| 7 | `theorem` | [surjective_unpair](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/surjective-unpair.md) | 73 | `result-track:12097cb45b61cb867ebe9490c658e156ea354fa6ce53a91a456efa3a2a788191` |
| 8 | `theorem` | [pair_eq_pair](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/pair-eq-pair.md) | 77 | `result-track:75eec316b57bc0aee2d1f3ff811f130698f69a89bb844b0899edb000b0b1ff0a` |
| 9 | `theorem` | [unpair_lt](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/unpair-lt.md) | 80 | `result-track:2ffb358c9ed70867342f1714bcfe3348a1b0a3a5fca53ad0c5cb2c47dcd0ef99` |
| 10 | `theorem` | [unpair_zero](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/unpair-zero.md) | 90 | `result-track:d11b5f792474be511145d1d81112e829e6d5fa923a1eeee71aea9557afc1b600` |
| 11 | `theorem` | [unpair_left_le](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/unpair-left-le.md) | 94 | `result-track:57fbb76a27c7464791766d3995f6a2f60e656aec41f6ac450b7ed05d496049e4` |
| 12 | `theorem` | [left_le_pair](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/left-le-pair.md) | 98 | `result-track:e28b3f3c5558fe5d34825209a0737563a519748f61e400bca1e4e852f63a4968` |
| 13 | `theorem` | [right_le_pair](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/right-le-pair.md) | 100 | `result-track:56f29349d703f2c18093c8636ff849f680794b38679c774ee121053860fe3145` |
| 14 | `theorem` | [unpair_right_le](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/unpair-right-le.md) | 105 | `result-track:1fbcd59935131c00eb999096c12fe49086bcb239cf09f0d0aae1584b037770cf` |
| 15 | `theorem` | [pair_lt_pair_left](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/pair-lt-pair-left.md) | 108 | `result-track:753097b7f325656995ad7457cd1fd8c4289f80cb906636d710a8a9056ff03726` |
| 16 | `theorem` | [pair_lt_pair_right](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/pair-lt-pair-right.md) | 121 | `result-track:0f94a8c188629666a6bf3c95b51d617bcdfbff03a5cc7f11f793756578ad21d1` |
| 17 | `theorem` | [pair_lt_max_add_one_sq](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/pair-lt-max-add-one-sq.md) | 131 | `result-track:6136f0a312f64bcbbb519f0388d72962900e1c14c1eee2e53ffe26ace064f32d` |
| 18 | `theorem` | [max_sq_add_min_le_pair](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/max-sq-add-min-le-pair.md) | 135 | `result-track:305b3db2fb0f7ba64e987285c910538a22a2d76e37be948de4d274e8991f1c9a` |
| 19 | `theorem` | [add_le_pair](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/add-le-pair.md) | 143 | `result-track:37e7d5cf06cfb84be82123c74b6e65db6f8d5d4c0d9d76e07e2105892c9b1d90` |
| 20 | `theorem` | [unpair_add_le](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/unpair-add-le.md) | 150 | `result-track:622fc45ac8b328a538b25f6658b2134207d0b58e84ddbf46586f792f22937669` |
| 21 | `theorem` | [iSup_unpair](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/isup-unpair.md) | 159 | `result-track:7c8e969a954bcb7458545e91eafb81a176255b49986bc9aef6340f2bffad37ef` |
| 22 | `theorem` | [iInf_unpair](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/iinf-unpair.md) | 163 | `result-track:62f9f583a0a76950220983196c3711e25d9661f9e27a29dee8074eaef0cdafd9` |
| 23 | `theorem` | [iUnion_unpair_prod](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/iunion-unpair-prod.md) | 171 | `result-track:41c892f24808917e86758f61edf75ed99b7bf9f27e196802d3d396aeb0ad7d05` |
| 24 | `theorem` | [iUnion_unpair](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/iunion-unpair.md) | 176 | `result-track:46549f62c0d2500802e275bc4d58607dd129fb96b15f5debfd3921e5ae973660` |
| 25 | `theorem` | [iInter_unpair](../../../../../NumberTheory/ElementaryNumberTheory/Pairing.lean/declarations/iinter-unpair.md) | 180 | `result-track:0cc957e235d30548ee83545b49879e29726724fc32b46ab8681c9b09bbee4322` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c663f2ec22e94e5e41c57172cc3b0adbb9dcc8767e840562553049fa5ba76abc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Pairing/Variant3df86ff3567d5f78edd6a5ee4b98714697a5a0a4cd4a87be0ef1364f7966b597.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Pairing/Variant3df86ff3567d5f78edd6a5ee4b98714697a5a0a4cd4a87be0ef1364f7966b597.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
