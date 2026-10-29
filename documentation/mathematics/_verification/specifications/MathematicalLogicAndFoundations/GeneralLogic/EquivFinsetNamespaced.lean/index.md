# Verification target: Equiv Finset Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72699ca79bc2f0c53a3365e6959740d288e5ef13",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant0ca96cace3c57320f572538cd24efecfff8d0439880aa33a2c4d3980106e63d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinsetNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinsetNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72699ca79bc2f0c53a3365e6959740d288e5ef13`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant0ca96cace3c57320f572538cd24efecfff8d0439880aa33a2c4d3980106e63d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant0ca96cace3c57320f572538cd24efecfff8d0439880aa33a2c4d3980106e63d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sort` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Multiset` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Finset.encodable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinsetNamespaced.lean/declarations/finset-encodable.md) | 26 | `declaration-track:b16e3a92104679c0e31efed2cc583230f038ca57f37cda507f52a2cdb341f889` |
| 2 | `def` | [sortedUniv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinsetNamespaced.lean/declarations/sorteduniv.md) | 34 | `declaration-track:d52f066e88ac643c05d62610db8e420a5930564bf5035d59c61367de43e3f2c4` |
| 3 | `theorem` | [mem_sortedUniv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinsetNamespaced.lean/declarations/mem-sorteduniv.md) | 38 | `result-track:b51c1f493a6e9e5ef3542ee1fd6e138eb33753fd0e42ce226c94722bfbef644c` |
| 4 | `theorem` | [length_sortedUniv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinsetNamespaced.lean/declarations/length-sorteduniv.md) | 42 | `result-track:1c2a1cc45e89161f51f96b67928c4481c04df4fd2bdd377425017120749ed2a0` |
| 5 | `theorem` | [sortedUniv_nodup](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinsetNamespaced.lean/declarations/sorteduniv-nodup.md) | 46 | `result-track:afc38c8072dbc0417ff1cd4d7934973cb87875364525affcd5d4d0350a67c6d8` |
| 6 | `theorem` | [sortedUniv_toFinset](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinsetNamespaced.lean/declarations/sorteduniv-tofinset.md) | 50 | `result-track:15c5f55edb3e69ab877f8e03a5e4f4914b2258b3604dee2e49174a30866cdd7c` |
| 7 | `def` | [fintypeEquivFin](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinsetNamespaced.lean/declarations/fintypeequivfin.md) | 55 | `declaration-track:2e48ff6cb488afe1d1bffa08ffe68cb193deec5e032b1f29b55be18234268653` |
| 8 | `def` | [lower'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinsetNamespaced.lean/declarations/lower.md) | 68 | `declaration-track:270241d52fec45bbd0a466699f5a6ddcd9e93e09abd8fa92cc1f00ffde6464a6` |
| 9 | `def` | [raise'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinsetNamespaced.lean/declarations/raise.md) | 75 | `declaration-track:23799c065ed85def6f1e59390ec3d6cd22647fe2fcb082c67d08175cf1206732` |
| 10 | `theorem` | [lower_raise'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinsetNamespaced.lean/declarations/lower-raise.md) | 79 | `result-track:9eccfbd57382a67855edb0688d333a1a83c27280ccad5863092ba1052f5cee32` |
| 11 | `theorem` | [raise_lower'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinsetNamespaced.lean/declarations/raise-lower.md) | 83 | `result-track:2374ef9a4c902e0005394302dc2591d348dc6fdbc6c5b2b7ed4f9a4fd84eac57` |
| 12 | `theorem` | [raise'_chain](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinsetNamespaced.lean/declarations/raise-chain.md) | 90 | `result-track:0e8b239e0225d7aa17cbfb2b2fad327b99d85b06602268cb3a309f223a106382` |
| 13 | `theorem` | [raise'_sorted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinsetNamespaced.lean/declarations/raise-sorted.md) | 96 | `result-track:a97f8e6672cdd0d29a9f00af7d42f32a1de74d63be1b89e57f904868500b1b1a` |
| 14 | `def` | [raise'Finset](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinsetNamespaced.lean/declarations/raise-finset.md) | 101 | `declaration-track:4472b7784a08a41149fe464d0fdaa90c8cd64bb16594ca40a62ff848df6da945` |
| 15 | `instance` | [finset](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivFinsetNamespaced.lean/declarations/finset.md) | 106 | `declaration-track:5e265d341e88bdd16dffdb99f7e2dab82407bb8e3c52b68fd60c4d1143312263` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f269f236dd368b84d5b768142ee895b5f1d200f430f179fe1589175bbd1557e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant0ca96cace3c57320f572538cd24efecfff8d0439880aa33a2c4d3980106e63d3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Finset/Variant0ca96cace3c57320f572538cd24efecfff8d0439880aa33a2c4d3980106e63d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
