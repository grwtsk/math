# Verification target: Commuting No Comments

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5eceb2760097c2678555b22ec9f672b61f587ea3",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/C512369c4e84da7bf2ede886b1b7a241f438a18253e61e90263e7e107f1f420cCommutingNoComme/Variantc512369c4e84da7bf2ede886b1b7a241f438a18253e61e90263e7e107f1f420c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5eceb2760097c2678555b22ec9f672b61f587ea3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/C512369c4e84da7bf2ede886b1b7a241f438a18253e61e90263e7e107f1f420cCommutingNoComme/Variantc512369c4e84da7bf2ede886b1b7a241f438a18253e61e90263e7e107f1f420c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/C512369c4e84da7bf2ede886b1b7a241f438a18253e61e90263e7e107f1f420cCommutingNoComme/Variantc512369c4e84da7bf2ede886b1b7a241f438a18253e61e90263e7e107f1f420c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.QuadraticSwapInvolution` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [involutionPlus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/involutionplus.md) | 37 | `declaration-track:67402541b11fd4470f39131dc98fd72a477cfd1640e76af277c0fbd7848c8c0f` |
| 2 | `def` | [involutionMinus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/involutionminus.md) | 41 | `declaration-track:3a02253ac2029e93e8315decb4d70f2bd0dab5c4c978e11afb2de4642328f964` |
| 3 | `theorem` | [involutionPlus_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/involutionplus-apply.md) | 45 | `result-track:fa0e118f6496ee142cd1e03833dd2c5ab88cba09c27145240070940a65b03b37` |
| 4 | `theorem` | [involutionMinus_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/involutionminus-apply.md) | 50 | `result-track:9e7e225c62ea93c3a973b60c723d7ff78ec3a0f267c7c95dc6c274d644ba4c55` |
| 5 | `theorem` | [involution_projection_decomposition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/involution-projection-decomposition.md) | 55 | `result-track:adc591019c15d5d8f331c0d276aa4a83c6f4c3b144b4ab707f02652b752b2264` |
| 6 | `theorem` | [involutionPlus_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/involutionplus-idempotent.md) | 62 | `result-track:7973d2721f17a3a99cbbe1d84fe00ca481c6b6475f9eac98e66874bd16befac4` |
| 7 | `theorem` | [involutionMinus_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/involutionminus-idempotent.md) | 70 | `result-track:fc1189e89ea49c8b2d7d3e450a99ac309cbeb83e48c3204ecb3b1f5d070ccc1e` |
| 8 | `theorem` | [involutionPlus_after_minus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/involutionplus-after-minus.md) | 78 | `result-track:134bbace704bfabeb92223ba9c901fcd1987bfee6662d566aca2ec4b4b42cf9e` |
| 9 | `theorem` | [involutionMinus_after_plus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/involutionminus-after-plus.md) | 85 | `result-track:ea199529ad1fac9ff12b8bfe6b1c77066da1bc91172f7f282b5504914eb98689` |
| 10 | `theorem` | [involution_on_plus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/involution-on-plus.md) | 92 | `result-track:9538c66d13abce7f22c698dfc4a09d2af3aea4561f72732d7f823ae287b7f385` |
| 11 | `theorem` | [involution_on_minus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/involution-on-minus.md) | 99 | `result-track:858922ec6738c86b95f15d73ce529e29fe0b118d651ba97f5a565626f726815e` |
| 12 | `structure` | [CommutingInvolutions](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/commutinginvolutions.md) | 106 | `declaration-track:b1c479a8374a05435dc4600c2ca7010144e94743a3e02f733093973bc20eb3dc` |
| 13 | `theorem` | [plusPlus_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/plusplus-commute.md) | 118 | `result-track:add4a9f1df3c6fdc7cd7e302c99824f65b9a44efa75a5727d61b2b68b7b6dff0` |
| 14 | `theorem` | [plusMinus_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/plusminus-commute.md) | 126 | `result-track:80925f1abe50bf65b8374b764b3c832e6ad1a5888d30f1956508ead5fc12e7e2` |
| 15 | `theorem` | [minusPlus_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/minusplus-commute.md) | 134 | `result-track:cf43271cfc9bff0fed77cb38a452e80a7a864d9afceac249ea81badd93ac27e8` |
| 16 | `theorem` | [minusMinus_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/minusminus-commute.md) | 142 | `result-track:460a3cdf7799d6626bb9da2e8e7d3882f7794dc2227557da7abb2ed9e303459e` |
| 17 | `def` | [sectorPP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectorpp.md) | 150 | `declaration-track:9e6244c2b654a592f11b5974a5cae9685aeb74b47b58669e3d123b0154e36001` |
| 18 | `def` | [sectorPM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectorpm.md) | 154 | `declaration-track:8d94fd6a86918be6c611c5cacf3e28a4a63119e5fe560df8e356fdb20284474f` |
| 19 | `def` | [sectorMP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectormp.md) | 158 | `declaration-track:d9561c6fd2adf79e2c3bf6f68ad54b4f5240cb137f82fdb04993ffab935aae9e` |
| 20 | `def` | [sectorMM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectormm.md) | 162 | `declaration-track:ecc91005d880c7fbed1fdca53d333b432fa50c98a16ebb57d7a9c0db828081f6` |
| 21 | `theorem` | [sectorPP_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectorpp-apply.md) | 166 | `result-track:8c7f7aedec4733179d6253c444f1ad465281dd7368bfa268444bfecba22daa14` |
| 22 | `theorem` | [sectorPM_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectorpm-apply.md) | 172 | `result-track:164766dd94f276b53c04b05f319457f7254818bc3952fc65399b270ff487e061` |
| 23 | `theorem` | [sectorMP_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectormp-apply.md) | 178 | `result-track:94ec74855164f98a732e1f254b5b406f9358270351203bd0e96dee89555a3b62` |
| 24 | `theorem` | [sectorMM_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectormm-apply.md) | 184 | `result-track:0e217e19c5b50679e16751c4ff782355dbc5d1069e5921afac348ed5d6185e17` |
| 25 | `theorem` | [idempotent_comp_of_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/idempotent-comp-of-commute.md) | 189 | `result-track:e0a4e9ea6f7da93a8c90eee7db76c977b0321242526187e5c89ae7fd0ba26349` |
| 26 | `theorem` | [sectorPP_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectorpp-idempotent.md) | 199 | `result-track:37b3e6d755ae81a40e506379c65d78461ee9ad801dd8d29776006dd94d805be1` |
| 27 | `theorem` | [sectorPM_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectorpm-idempotent.md) | 208 | `result-track:164847a586e3a523bf2986699ec7f393c35642114495357e8fff96e67947d939` |
| 28 | `theorem` | [sectorMP_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectormp-idempotent.md) | 217 | `result-track:40cd248995e22863ba7a0f332ba0dd5d60aaf6a65a44c693d479fef10588f13c` |
| 29 | `theorem` | [sectorMM_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectormm-idempotent.md) | 226 | `result-track:eab6de3ca2e20d1f942c779c6ffbe99a42eaa6d0c2cd223ce2b8a284c0282624` |
| 30 | `theorem` | [four_sector_decomposition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/four-sector-decomposition.md) | 235 | `result-track:ee56d712e413d38e432d04fe2f7dd828468a944c9c09c0b18c9f4dd540c70b26` |
| 31 | `theorem` | [sectorPP_after_PM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectorpp-after-pm.md) | 242 | `result-track:5282bd0430fda88a26b744f47f1e4784c718783a030f1b3a19bc09f35c66310f` |
| 32 | `theorem` | [sectorPM_after_PP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectorpm-after-pp.md) | 253 | `result-track:75d4cad844256a8b09bdfee9632ba1d5da13b69b9471ba41383036e7671127ed` |
| 33 | `theorem` | [sectorPP_after_MP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectorpp-after-mp.md) | 264 | `result-track:b24c34726a9bc8aaff1a38b29ed019b385858a70661de17d3c5fd830caef0627` |
| 34 | `theorem` | [sectorMP_after_PP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectormp-after-pp.md) | 274 | `result-track:e485601f58eff75668177a5b2adabdd17484baad97480b19f3845a99116c9282` |
| 35 | `theorem` | [sectorPP_after_MM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectorpp-after-mm.md) | 284 | `result-track:ee1955392dadb46b149b4a73868ce30514aa490ed44037eee4a2f13b8775938c` |
| 36 | `theorem` | [sectorMM_after_PP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectormm-after-pp.md) | 294 | `result-track:089057d90f5dafd59ca1c779580dd7e6d06e2615bb1958a7f2ec8447d34ab22b` |
| 37 | `theorem` | [sectorPM_after_MP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectorpm-after-mp.md) | 304 | `result-track:dbbfdcfeb5ee332ac79e539ad2f2dd8ac90ce05dedd7e5f9a6ef6a1bec7fd6f5` |
| 38 | `theorem` | [sectorMP_after_PM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectormp-after-pm.md) | 314 | `result-track:fbb161db066e0aff8080d3c701ec8edc3f045ab8230fcb177a51120e4ff1b82b` |
| 39 | `theorem` | [sectorPM_after_MM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectorpm-after-mm.md) | 324 | `result-track:cd86c76f4a304da05db654d1ba56c0fa3d0aab945341412389e9c8ef8ea4dac8` |
| 40 | `theorem` | [sectorMM_after_PM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectormm-after-pm.md) | 335 | `result-track:1c0acc00a9262843655c67c1ee1aee08eaddab03e310a469b9fc9df1fee17f6a` |
| 41 | `theorem` | [sectorMP_after_MM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectormp-after-mm.md) | 346 | `result-track:d15e3deb049102bef8a9f0e9d87334e0f73419ab4fb76a3ca3d98727999edf8e` |
| 42 | `theorem` | [sectorMM_after_MP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/sectormm-after-mp.md) | 357 | `result-track:17efea724ac9c51c6b29e0e19c9e052c8dbf91e467fcab021b8a5f8dd07053a8` |
| 43 | `def` | [interventionSector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/interventionsector.md) | 368 | `declaration-track:6c3d93a6c122204a026b2545585a84f45518deadb09de9637a493fd5b00db57f` |
| 44 | `theorem` | [interventionSector_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/interventionsector-idempotent.md) | 372 | `result-track:94eb7e5ed7cf072e8463f9c88b1c88b7ecd27d54f84a0b9db9ff9813caa92f9e` |
| 45 | `theorem` | [first_on_interventionSector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/first-on-interventionsector.md) | 377 | `result-track:6fc622e77539d7ffb00918da0ec968476b79f77b4a09f3f5be5a273189eace43` |
| 46 | `theorem` | [second_on_interventionSector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingNoComments.lean/declarations/second-on-interventionsector.md) | 385 | `result-track:54c1e95307d08f2e73a5cd4d193c95442dabb2723e07a728d063f44c4972478d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ffa68bf17fba3d233ef0f5dd749f5f07cc4bdb4402849826ad557f900ce05b71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/C512369c4e84da7bf2ede886b1b7a241f438a18253e61e90263e7e107f1f420cCommutingNoComme/Variantc512369c4e84da7bf2ede886b1b7a241f438a18253e61e90263e7e107f1f420c.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/C512369c4e84da7bf2ede886b1b7a241f438a18253e61e90263e7e107f1f420cCommutingNoComme/Variantc512369c4e84da7bf2ede886b1b7a241f438a18253e61e90263e7e107f1f420c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
