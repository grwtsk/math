# Verification target: Normed Space Unitization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62a6f112b523b2642cfaaaa3e427ef82277c3783",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Unitization/Variant1ba79b038eb1f67f9a123405038a9bfe0b8f8e97bf958c13797972d770db6d74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/index.md) · [Full source](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62a6f112b523b2642cfaaaa3e427ef82277c3783`.

Source path: `GRWTSK/Topology/MetricTopology/Unitization/Variant1ba79b038eb1f67f9a123405038a9bfe0b8f8e97bf958c13797972d770db6d74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Unitization/Variant1ba79b038eb1f67f9a123405038a9bfe0b8f8e97bf958c13797972d770db6d74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Unitization` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitMul](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/splitmul.md) | 71 | `declaration-track:05d86a856be51b27b743c0f9ca95180cc16f5c684681b434e32b7cac43f6c2dc` |
| 2 | `theorem` | [splitMul_apply](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/splitmul-apply.md) | 77 | `result-track:ce9deae28ab9a1581697e4750ed32f9673b9a749d0225d0a30b9944732876b6c` |
| 3 | `theorem` | [splitMul_injective_of_clm_mul_injective](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/splitmul-injective-of-clm-mul-injective.md) | 84 | `result-track:87543baaaf7fdf2e8cd5ba6ac88f605d40cd07d7e9630cb015fdcc7904426914` |
| 4 | `theorem` | [splitMul_injective](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/splitmul-injective.md) | 103 | `result-track:edafaddd3d2f5bd403e2a0170e366c02d89ac38af17ca559df1fbebca8e5b957` |
| 5 | `def` | [normedRingAux](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/normedringaux.md) | 115 | `declaration-track:2b9b20737d92fa8463e4e9e46bccd4c8969a2bfeb0c28bb8aa951dcd073c6f43` |
| 6 | `def` | [normedAlgebraAux](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/normedalgebraaux.md) | 126 | `declaration-track:abf4c2c74ad1a043721da785d074974dd69d5cbadd0ec67613babb86f8f5be62` |
| 7 | `theorem` | [norm_def](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/norm-def.md) | 131 | `result-track:e31d1ae99bfbecf1c455a3a8e9708502b8dacfff17acb57234f66a4ebaa05c86` |
| 8 | `theorem` | [nnnorm_def](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/nnnorm-def.md) | 134 | `result-track:432277795f69b9252612f4d9e672c656e04593715cab4fd31281eec9bd2ff700` |
| 9 | `theorem` | [norm_eq_sup](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/norm-eq-sup.md) | 138 | `result-track:c0e8e644152db73f766f056ff0ae97381b9564648102cc910db1b8a0244bc37c` |
| 10 | `theorem` | [nnnorm_eq_sup](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/nnnorm-eq-sup.md) | 144 | `result-track:abfffe5a9b90d387908bec23d6134d9177adb15cd01499dc17435f0bae6f116c` |
| 11 | `theorem` | [lipschitzWith_addEquiv](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/lipschitzwith-addequiv.md) | 149 | `result-track:f013a25b2eda55ea8674859d561b59b336df4a72036c005f9af5541f0b45d026` |
| 12 | `theorem` | [antilipschitzWith_addEquiv](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/antilipschitzwith-addequiv.md) | 167 | `result-track:83a640bcf3379e42c11710fa34691e5d3ca147d8d701329e54b8794cced6d020` |
| 13 | `theorem` | [uniformity_eq_aux](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/uniformity-eq-aux.md) | 185 | `result-track:38b123699a13957256753027e03165f2c6b2effc78b65d6d3d055aa4260326ac` |
| 14 | `theorem` | [cobounded_eq_aux](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/cobounded-eq-aux.md) | 192 | `result-track:00020626e5f43e63889e449b281a34566688d64ba4ff708298b2bc9900f286c4` |
| 15 | `instance` | [instUniformSpace](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/instuniformspace.md) | 200 | `declaration-track:1de777bc2dbfcd35573fb5036aa97ede4f8e30a12f79a66d3e27b2730713b24d` |
| 16 | `instance` | [instBornology](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/instbornology.md) | 204 | `declaration-track:8d70458bac03cbd124cc873eae158a16440b42084737fbbf644e3b71889c8f7e` |
| 17 | `theorem` | [uniformEmbedding_addEquiv](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/uniformembedding-addequiv.md) | 207 | `result-track:b28578bda0b4913dcc9d77320986dd9cc2d15343fdc99d82c162d5a6323e6b73` |
| 18 | `instance` | [instCompleteSpace](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/instcompletespace.md) | 212 | `declaration-track:b1d052eacb70b30f6687ae0ea7949a5b7c8e0bd75a38d6e4ab062d7a20e43931` |
| 19 | `instance` | [instMetricSpace](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/instmetricspace.md) | 219 | `declaration-track:03e93bcdd644f3548ed7db3b55a7d39dc548fe31b28298803715c54027ca5560` |
| 20 | `instance` | [instNormedRing](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/instnormedring.md) | 225 | `declaration-track:7e1f013ed3845e73fa9daffed9a5c7e533f755634717d473e8773df84d203222` |
| 21 | `instance` | [instNormedAlgebra](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/instnormedalgebra.md) | 233 | `declaration-track:de4dd0c3c180965fa1d8325df83569d890e0d54c73c1505c1af1440715c2c14e` |
| 22 | `instance` | [instNormOneClass](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/instnormoneclass.md) | 237 | `declaration-track:64908ce2236552d5cc956a06c07494a3532b7d14e0b5943d887d5252d6c09a39` |
| 23 | `lemma` | [norm_inr](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/norm-inr.md) | 241 | `result-track:b52df5907c8c01520481e69a0b24da0c9cb5f1ef48c8f6c04a218bc9aabfe577` |
| 24 | `lemma` | [nnnorm_inr](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/nnnorm-inr.md) | 244 | `result-track:1aaa982d4805ea0f0061cee2851e0305a5a689d98abb149ac3923b055b1abc2d` |
| 25 | `lemma` | [isometry_inr](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/isometry-inr.md) | 247 | `result-track:7a2ec3ab12b34e6024c329e1f70f5a94c1d39418261ba1c17a93587cd8cc90d3` |
| 26 | `lemma` | [dist_inr](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/dist-inr.md) | 250 | `result-track:f88563c362ecd39e8966c7b9f5cbaac8fbd8f646b82cec71c85f0e675b2923d1` |
| 27 | `lemma` | [nndist_inr](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/nndist-inr.md) | 253 | `result-track:630e4c031c8ccaecdbf1cfac3a58965bf6d2675b02efa720dec712e3cb86e465` |
| 28 | `example` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/example-source-edition-2.md) | 258 | `declaration-track:275e81f83d00f9bd38fedef7de7b8c5c914646bb2fdcc872fa84cdbf333ff425` |
| 29 | `example` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/example-source-edition-3.md) | 259 | `declaration-track:a3faec5f94375ca21201193f0d01e1376a4455a66bc02c7b6299643f84e89a3b` |
| 30 | `example` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpaceUnitization.lean/declarations/example.md) | 260 | `declaration-track:26f538b0132a96f051dd8f03f5c3ab67f16d31c69cfde2fc7f5f28a124746620` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c64695d5f744d38793fe0e8692bd9b04ca876e3751b12630676f0cb369d1f59 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Unitization/Variant1ba79b038eb1f67f9a123405038a9bfe0b8f8e97bf958c13797972d770db6d74.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Unitization/Variant1ba79b038eb1f67f9a123405038a9bfe0b8f8e97bf958c13797972d770db6d74.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
