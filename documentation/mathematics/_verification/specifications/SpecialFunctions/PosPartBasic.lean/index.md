# Verification target: Pos Part Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e304855c08968c5e8dd40522b0237a18907f71b9",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/PosPartBasic.lean/index.md) · [Full source](../../../../SpecialFunctions/PosPartBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e304855c08968c5e8dd40522b0237a18907f71b9`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unique` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.ContinuousSqrt` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.StoneWeierstrass` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../SpecialFunctions/PosPartBasic.lean/declarations/instance.md) | 28 | `declaration-track:8841d6079cabc5993a1e60fd835c091ad4af1b008a6e2cdce6a2ed46b8dee116` |
| 2 | `instance` | [(anonymous)](../../../../SpecialFunctions/PosPartBasic.lean/declarations/instance-source-edition-2.md) | 31 | `declaration-track:f42a1d23a8645b0a716a7dbc15a459b7e0c92cd19afe16ae7e6a7619ea72e2d6` |
| 3 | `lemma` | [posPart_def](../../../../SpecialFunctions/PosPartBasic.lean/declarations/pospart-def.md) | 38 | `result-track:06b4ad9c6bb88db4e6f4a809413d058d201ae1625fa33510eee6243c1d339372` |
| 4 | `lemma` | [negPart_def](../../../../SpecialFunctions/PosPartBasic.lean/declarations/negpart-def.md) | 40 | `result-track:c1d140c9a368c2ab6a5e9b46161758d0a83e0268293c6f8e87afbb2ac846eb9b` |
| 5 | `lemma` | [posPart_zero](../../../../SpecialFunctions/PosPartBasic.lean/declarations/pospart-zero.md) | 43 | `result-track:b0e16b3518735c3ee817a6c2e19a6508d999d17af0ef1e21f23b73252f70d7f9` |
| 6 | `lemma` | [negPart_zero](../../../../SpecialFunctions/PosPartBasic.lean/declarations/negpart-zero.md) | 46 | `result-track:71cf35984d256ad35d357d100fc012ce8f5d36fe2822561ed37248c25002ad7a` |
| 7 | `lemma` | [posPart_eq_zero_of_not_isSelfAdjoint](../../../../SpecialFunctions/PosPartBasic.lean/declarations/pospart-eq-zero-of-not-isselfadjoint.md) | 48 | `result-track:f83ec337de106f2d30607619e7490710e60f1f4a786bef5c280198c40ee004be` |
| 8 | `lemma` | [negPart_eq_zero_of_not_isSelfAdjoint](../../../../SpecialFunctions/PosPartBasic.lean/declarations/negpart-eq-zero-of-not-isselfadjoint.md) | 51 | `result-track:c33c93e1406ecaa3161a9c09c0ead4cfada642cc6c5840318fa03ccfeefdcc97` |
| 9 | `lemma` | [posPart_mul_negPart](../../../../SpecialFunctions/PosPartBasic.lean/declarations/pospart-mul-negpart.md) | 55 | `result-track:981bf983a08b292310f70d6ee4a73550bccdf6026126092a5338dc35f7b4773f` |
| 10 | `lemma` | [negPart_mul_posPart](../../../../SpecialFunctions/PosPartBasic.lean/declarations/negpart-mul-pospart.md) | 65 | `result-track:01aa5dfd42d96e95b09e491f5d4eccb88b9e4d7d7d84057210e4f7727d0dd7bf` |
| 11 | `lemma` | [posPart_sub_negPart](../../../../SpecialFunctions/PosPartBasic.lean/declarations/pospart-sub-negpart.md) | 74 | `result-track:fe660f0e90ff012d0f89ae5d7717a20f7943d1b8f0ea3cadc07d69a4c591ebf5` |
| 12 | `lemma` | [posPart_neg](../../../../SpecialFunctions/PosPartBasic.lean/declarations/pospart-neg.md) | 86 | `result-track:cfa4ed209611b1b2beca2c567a3cce3f950429ca677d63673fecbbda31b3a3b1` |
| 13 | `lemma` | [negPart_neg](../../../../SpecialFunctions/PosPartBasic.lean/declarations/negpart-neg.md) | 95 | `result-track:b2eccb1feac6c69c231455da887d290cb242a58a6591843fc9742a797779f416` |
| 14 | `lemma` | [posPart_smul](../../../../SpecialFunctions/PosPartBasic.lean/declarations/pospart-smul.md) | 103 | `result-track:d3ad8505240455ff486142e4f70fc54133a05a83d81ec5304acc14eb5c6530df` |
| 15 | `lemma` | [negPart_smul](../../../../SpecialFunctions/PosPartBasic.lean/declarations/negpart-smul.md) | 116 | `result-track:901346b24574a3db9a689b881c098a682afa22e2fa59b24dcc0f947f26149f38` |
| 16 | `lemma` | [posPart_smul_of_nonneg](../../../../SpecialFunctions/PosPartBasic.lean/declarations/pospart-smul-of-nonneg.md) | 119 | `result-track:caf1ff8bdde9fb875bf2ba4405b114bc216a6a710d5dcfd194bd6425596e76cd` |
| 17 | `lemma` | [posPart_smul_of_nonpos](../../../../SpecialFunctions/PosPartBasic.lean/declarations/pospart-smul-of-nonpos.md) | 122 | `result-track:d01299dfc248d34b8bd4e8edb95eeb95d132a4a5b1c97bf9df4bf5d6da773200` |
| 18 | `lemma` | [negPart_smul_of_nonneg](../../../../SpecialFunctions/PosPartBasic.lean/declarations/negpart-smul-of-nonneg.md) | 126 | `result-track:5195e6088e93bc0d72574c826cc3c42f03997799047d82f048a0efe7d4dabfd9` |
| 19 | `lemma` | [negPart_smul_of_nonpos](../../../../SpecialFunctions/PosPartBasic.lean/declarations/negpart-smul-of-nonpos.md) | 129 | `result-track:9d2720102ebdf5a7f8baffe8c6210e5a7236bd82d542ee7b001e0901a7051b52` |
| 20 | `lemma` | [posPart_nonneg](../../../../SpecialFunctions/PosPartBasic.lean/declarations/pospart-nonneg.md) | 139 | `result-track:55e274476391b139fa7b55241dcea4a885c05de0724a56ecaa1f32ab83c6ebfa` |
| 21 | `lemma` | [negPart_nonneg](../../../../SpecialFunctions/PosPartBasic.lean/declarations/negpart-nonneg.md) | 144 | `result-track:890c5a3d2a40047d65ff3152b6d2ed1beae3da3f816a9ea3c4a135951c5a8c40` |
| 22 | `lemma` | [posPart_eq_of_eq_sub_negPart](../../../../SpecialFunctions/PosPartBasic.lean/declarations/pospart-eq-of-eq-sub-negpart.md) | 148 | `result-track:cd6e8c1a9d7817c4423ee5b7cfebbeacada0bbcbe2abefce822e71fc981c46b2` |
| 23 | `lemma` | [negPart_eq_of_eq_PosPart_sub](../../../../SpecialFunctions/PosPartBasic.lean/declarations/negpart-eq-of-eq-pospart-sub.md) | 154 | `result-track:cd2522d928779b6dd4ac4bd30d0b5c961a36ed57a03dafecff4eaec515ad000b` |
| 24 | `lemma` | [le_posPart](../../../../SpecialFunctions/PosPartBasic.lean/declarations/le-pospart.md) | 160 | `result-track:3538405e8372dea85a387b58778c35c5ab0c234931ee513b994329c23a14b46b` |
| 25 | `lemma` | [neg_negPart_le](../../../../SpecialFunctions/PosPartBasic.lean/declarations/neg-negpart-le.md) | 163 | `result-track:caf765f90281a6aeb25bc84b9b33b5b8303dcd141100473810d6fc403d1ad8f1` |
| 26 | `lemma` | [posPart_eq_self](../../../../SpecialFunctions/PosPartBasic.lean/declarations/pospart-eq-self.md) | 169 | `result-track:d284aded3c6dd739295b560d958eff4328044ae179fe412ea36d51a159482a9c` |
| 27 | `lemma` | [eq_posPart_iff](../../../../SpecialFunctions/PosPartBasic.lean/declarations/eq-pospart-iff.md) | 177 | `result-track:04469fab9b542c60c86cd42e2ee5ef1aff1a4e1371eefcd55eb948be8486f4c0` |
| 28 | `lemma` | [negPart_eq_zero_iff](../../../../SpecialFunctions/PosPartBasic.lean/declarations/negpart-eq-zero-iff.md) | 180 | `result-track:c1e6a2dad0bfda9eda9e3487daf10a562c34de28ea5d080f2e8cee17066a2a87` |
| 29 | `lemma` | [negPart_eq_neg](../../../../SpecialFunctions/PosPartBasic.lean/declarations/negpart-eq-neg.md) | 186 | `result-track:dbe0df887f6bcc928cc24ae58ef01764e33408fa582e72b6f905cd569bef3d1b` |
| 30 | `lemma` | [eq_negPart_iff](../../../../SpecialFunctions/PosPartBasic.lean/declarations/eq-negpart-iff.md) | 200 | `result-track:5d38c7e4b41e1d2f13cd6f07ceb7847860814a7d01ae17b6fe1a0ecde3db97f7` |
| 31 | `lemma` | [posPart_eq_zero_iff](../../../../SpecialFunctions/PosPartBasic.lean/declarations/pospart-eq-zero-iff.md) | 203 | `result-track:04a006c0d6bf4e5163274f0410b6a84613fa223fb95d30fe54d11b392b0ac637` |
| 32 | `lemma` | [posPart_negPart_unique](../../../../SpecialFunctions/PosPartBasic.lean/declarations/pospart-negpart-unique.md) | 219 | `result-track:2dad79400cb48147047e7cf19525212b874dbae28a68a356b3a3f0e7bcb52bf4` |
| 33 | `lemma` | [posPart_one](../../../../SpecialFunctions/PosPartBasic.lean/declarations/pospart-one.md) | 322 | `result-track:fc5282f07207d075bf16403feedb6c9ed83a9ee7f4edf1f2718e4aba4179a362` |
| 34 | `lemma` | [negPart_one](../../../../SpecialFunctions/PosPartBasic.lean/declarations/negpart-one.md) | 327 | `result-track:38f2340613548308e9d12d9820e816b31271f773d59d67c347317cc8293ae428` |
| 35 | `lemma` | [posPart_algebraMap](../../../../SpecialFunctions/PosPartBasic.lean/declarations/pospart-algebramap.md) | 332 | `result-track:f6b956ee1d5a9639793db4e5c4c4059a3b55f025de543b6d2788388fdc04270d` |
| 36 | `lemma` | [negPart_algebraMap](../../../../SpecialFunctions/PosPartBasic.lean/declarations/negpart-algebramap.md) | 337 | `result-track:1cd771d9125117dbc0709d63d11b8a61b5d39efdb847dd0f2a85b7ce808134b9` |
| 37 | `lemma` | [posPart_algebraMap_nnreal](../../../../SpecialFunctions/PosPartBasic.lean/declarations/pospart-algebramap-nnreal.md) | 343 | `result-track:5c1d0b85a2dfc71c76f19aa4cb17af9b69d5c67a18067f20bf936031eac77cd0` |
| 38 | `lemma` | [posPart_natCast](../../../../SpecialFunctions/PosPartBasic.lean/declarations/pospart-natcast.md) | 349 | `result-track:8dd8f2494141a5ed474b6230d305a8cbda568191d6c3288786ef5cca4b849c41` |
| 39 | `lemma` | [CStarAlgebra.linear_combination_nonneg](../../../../SpecialFunctions/PosPartBasic.lean/declarations/cstaralgebra-linear-combination-nonneg.md) | 365 | `result-track:60985522dc7cbf0103da28e3844afb7525d1a90ef343b19f2cc0c71c194b653c` |
| 40 | `lemma` | [CStarAlgebra.span_nonneg](../../../../SpecialFunctions/PosPartBasic.lean/declarations/cstaralgebra-span-nonneg.md) | 373 | `result-track:318359a82ce7f43779d037f787d7f16894b24509fb0428dcb0624f1031b8fc68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9298fdf7785f3409968359239be09f18f76f583731317f63a0ff85dc7b9a4045 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant452fc0ae94069f78cfa228b5c0060926607f51688e453b045ac877228e148e1a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
