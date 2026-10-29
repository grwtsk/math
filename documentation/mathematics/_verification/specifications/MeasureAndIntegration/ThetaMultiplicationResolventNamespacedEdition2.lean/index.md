# Verification target: Theta Multiplication Resolvent Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc1e16f4b357c774d7d302b4e9f3cc96f34aa1dd",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variante301f95faf222e5dbcd7946ba8c5dfe0acf341a925fb188971f4a9db7850b41b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc1e16f4b357c774d7d302b4e9f3cc96f34aa1dd`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variante301f95faf222e5dbcd7946ba8c5dfe0acf341a925fb188971f4a9db7850b41b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variante301f95faf222e5dbcd7946ba8c5dfe0acf341a925fb188971f4a9db7850b41b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaMultiplicationDomain` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [imaginaryShift](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/imaginaryshift.md) | 30 | `declaration-track:407b456ec408ee8fd0be1cc3aa5648cad7a0aa42b349783b2b47b310bbd89160` |
| 2 | `theorem` | [imaginaryShift_conj](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/imaginaryshift-conj.md) | 32 | `result-track:8e1e003e7ddf7b5a9b9d06f22d0367b61a670af0bc0e1dad3fc2ad4b238ab296` |
| 3 | `theorem` | [denominator_ne_zero](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/denominator-ne-zero.md) | 35 | `result-track:5d767abf14afff70fc72c3f789b08d372310425237525acdd02943f346e480b1` |
| 4 | `theorem` | [norm_denominator_sq](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/norm-denominator-sq.md) | 40 | `result-track:037f51726952d5df6c662979ddf6e7aa73431ce6a2831c7a10543c720f64fb26` |
| 5 | `theorem` | [one_le_norm_denominator](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/one-le-norm-denominator.md) | 45 | `result-track:f750db403ece19cf420bd690f615850e409af43decc5382dbd3e280ab7cf8329` |
| 6 | `theorem` | [coordinate_le_norm_denominator](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/coordinate-le-norm-denominator.md) | 50 | `result-track:6237beba5d10c34ca73539ccfa96553771bd7cfbd048e441c9392721d7f07759` |
| 7 | `theorem` | [reciprocal_bound](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/reciprocal-bound.md) | 55 | `result-track:91276c96b9f69a8e4dfca39c9577b1be67219e5d35ecdd53cfc33168879a012c` |
| 8 | `theorem` | [weighted_reciprocal_bound](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/weighted-reciprocal-bound.md) | 60 | `result-track:86cc8f94c8a9efa9bf51d565e7781f98650cd23e137b6b2d3be164b7995db526` |
| 9 | `theorem` | [resolvent_memLp](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/resolvent-memlp.md) | 68 | `result-track:ef85e04ce148b214316b650e26876a49550c68cc886ae178fb1e433c3625793b` |
| 10 | `def` | [resolvent](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/resolvent.md) | 78 | `declaration-track:db2eea680704ed1ee9cab555cb65c5f684858a3552981d230828848cc0300fec` |
| 11 | `theorem` | [resolvent_ae](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/resolvent-ae.md) | 81 | `result-track:14ccafc101d4456d5244546c2172bdf8dae6341b466209d4ba26a13348bc260e` |
| 12 | `theorem` | [resolvent_mem_domain](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/resolvent-mem-domain.md) | 85 | `result-track:ba24c759cc24a85249575288441ad359fadc9216bd7f0ec27cc3630f317356f3` |
| 13 | `def` | [resolventDomainVector](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/resolventdomainvector.md) | 101 | `declaration-track:0da56f43acf42902ebefd85ac9cd37e1cef0db8ac32d248e1601bf79fbb46b9f` |
| 14 | `def` | [shiftedCoordinate](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/shiftedcoordinate.md) | 105 | `declaration-track:cc8f9b08c8dc87f37b58d601e491d304c027537e0dff756443d0dbc1740ef9e0` |
| 15 | `theorem` | [shiftedCoordinate_apply](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/shiftedcoordinate-apply.md) | 109 | `result-track:ea598a1293b7c14fbbd3a219cb7844c1215004b2e5ac3fee9dca7223efc554eb` |
| 16 | `theorem` | [shiftedCoordinate_ae](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/shiftedcoordinate-ae.md) | 113 | `result-track:d71f7f77aeedc8edecf1c2730736b40cad3e3192b8cb70df8812b05db3a67e82` |
| 17 | `theorem` | [shiftedCoordinate_resolvent](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/shiftedcoordinate-resolvent.md) | 125 | `result-track:2dd8dc3c29680b66ff99d52de28e1cf4fe3eb6c3dfe060e91807610d759e13c8` |
| 18 | `theorem` | [shiftedCoordinate_surjective](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/shiftedcoordinate-surjective.md) | 134 | `result-track:9e4a34bf0c9147471d6b6016b976f8f36b180dce69b2547a900ba857b24a6a7b` |
| 19 | `theorem` | [shiftedCoordinate_norm_sq](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/shiftedcoordinate-norm-sq.md) | 138 | `result-track:e2ca9bbad7f886abdc9d6349da1916ec7ea1cfd94ae264397a73b1781e192e3d` |
| 20 | `theorem` | [resolvent_graph_norm_sq](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/resolvent-graph-norm-sq.md) | 146 | `result-track:4308000690ad84096362d942ac5e01ac8e432126ea4b7aa36b3ba1643e51f78a` |
| 21 | `theorem` | [resolvent_norm_le](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/resolvent-norm-le.md) | 153 | `result-track:a2ca091ad5b7e3551fccc047da0f35abc1cd4d5270da5bdb370fc7694c2bf777` |
| 22 | `theorem` | [resolvent_shiftedCoordinate](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/resolvent-shiftedcoordinate.md) | 159 | `result-track:ed2e8d2151760f07a982b858a90d673bf0a224cd3447c67f1359ff02d84cee5e` |
| 23 | `theorem` | [resolvent_add](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/resolvent-add.md) | 166 | `result-track:467db4e1b349ce314fefe801dc9dca56a7be30e67d9dd4227862d08fb6475b5e` |
| 24 | `theorem` | [resolvent_smul](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/resolvent-smul.md) | 179 | `result-track:24194088294e1ebdb9bdd8112e5a973cabb53984120c1ce0ffe8279012ff59af` |
| 25 | `def` | [resolventLinear](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/resolventlinear.md) | 191 | `declaration-track:648cd45b476634105fafd86c7fcbe1ab080f5110fad441faf3995a479be772df` |
| 26 | `def` | [resolventContinuous](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/resolventcontinuous.md) | 197 | `declaration-track:ed62ea686a375892a27d2003bd435a636f8e807aca44e4b6c9c7471f44c8efb5` |
| 27 | `theorem` | [resolventContinuous_apply](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/resolventcontinuous-apply.md) | 202 | `result-track:4ffe6a77777b055e64a63a549dfc80c627beebb6c2ec471558251d34689a7dc7` |
| 28 | `theorem` | [norm_resolventContinuous_le_one](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/norm-resolventcontinuous-le-one.md) | 205 | `result-track:da6f8217447a609417c8e32d46510cf752f79de772d87a2a79d16746ff2f8ad1` |
| 29 | `theorem` | [adjoint_domain_subset_of_dense](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/adjoint-domain-subset-of-dense.md) | 212 | `result-track:954c3772c5df99611ae1eeb17dcf022a485f80a4efb61947f1dfce0c4a049f16` |
| 30 | `theorem` | [coordinateMultiplication_isSelfAdjoint_of_dense](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/coordinatemultiplication-isselfadjoint-of-dense.md) | 244 | `result-track:e9ede70fd1ce72748e61b770d1bd3f19139a0de6f456012c79cce3b058a2ddf0` |
| 31 | `theorem` | [coordinateMultiplication_isSelfAdjoint](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/coordinatemultiplication-isselfadjoint.md) | 254 | `result-track:3050c559e0b9a4ed6c6a9525d75665bab2dcefc239c9332028377bac5f51276c` |
| 32 | `theorem` | [coordinateMultiplication_isClosed](../../../../MeasureAndIntegration/ThetaMultiplicationResolventNamespacedEdition2.lean/declarations/coordinatemultiplication-isclosed.md) | 259 | `result-track:2a871f4a5f6a4cdaabc0f7255430708a4f09adc93ef05bbabdf342ecb1de4cf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=386e68a91f175555fcbc7d5cdb95455af932340af20fde7b61c6f0cf6ece592a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variante301f95faf222e5dbcd7946ba8c5dfe0acf341a925fb188971f4a9db7850b41b.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variante301f95faf222e5dbcd7946ba8c5dfe0acf341a925fb188971f4a9db7850b41b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
