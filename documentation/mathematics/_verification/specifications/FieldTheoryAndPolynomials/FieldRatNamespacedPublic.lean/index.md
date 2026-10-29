# Verification target: Field Rat Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8453e84377409d88768b3ad1348abe52c889851f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Rat/Varianta3a483d80aa94288c3f68cc1fd7df1339ceb491ac7365b6a308bc01b515757fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/FieldRatNamespacedPublic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/FieldRatNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8453e84377409d88768b3ad1348abe52c889851f`.

Source path: `GRWTSK/Algebra/Rat/Varianta3a483d80aa94288c3f68cc1fd7df1339ceb491ac7365b6a308bc01b515757fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Rat/Varianta3a483d80aa94288c3f68cc1fd7df1339ceb491ac7365b6a308bc01b515757fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instField](../../../../FieldTheoryAndPolynomials/FieldRatNamespacedPublic.lean/declarations/instfield.md) | 35 | `declaration-track:b6020adaa869edba8431a7a5754225ddd3e5fd57c17b555ab6b3c81c8a801494` |
| 2 | `instance` | [instDivisionRing](../../../../FieldTheoryAndPolynomials/FieldRatNamespacedPublic.lean/declarations/instdivisionring.md) | 52 | `declaration-track:03b5c1324ef139181a63b25e4441e7764b191e617d322fba7a6a81db4d811a05` |
| 3 | `lemma` | [inv_nonneg](../../../../FieldTheoryAndPolynomials/FieldRatNamespacedPublic.lean/declarations/inv-nonneg.md) | 54 | `result-track:d3972d52deb7f91a45ee24151c6230e6eaf52a57e302147c86e8e328a6c6e867` |
| 4 | `lemma` | [div_nonneg](../../../../FieldTheoryAndPolynomials/FieldRatNamespacedPublic.lean/declarations/div-nonneg.md) | 58 | `result-track:f3d65ac5b106a59c19b1fc922bb73b338184f8183f0323f1bbfaa595a654bef1` |
| 5 | `instance` | [instInv](../../../../FieldTheoryAndPolynomials/FieldRatNamespacedPublic.lean/declarations/instinv.md) | 65 | `declaration-track:f3dece739a29fe3897ffd13f656cde753d9671b51283c9870939636a5afa71b0` |
| 6 | `instance` | [instDiv](../../../../FieldTheoryAndPolynomials/FieldRatNamespacedPublic.lean/declarations/instdiv.md) | 68 | `declaration-track:40fcd6ec8401ed8c748a43f00cb56407b75aec0d4ac5c0542668cecbf8949029` |
| 7 | `instance` | [instZPow](../../../../FieldTheoryAndPolynomials/FieldRatNamespacedPublic.lean/declarations/instzpow.md) | 71 | `declaration-track:cf0a227d20a1319d39d2acf022614299ee64ac66bbf839975bee5864db69f919` |
| 8 | `lemma` | [coe_inv](../../../../FieldTheoryAndPolynomials/FieldRatNamespacedPublic.lean/declarations/coe-inv.md) | 74 | `result-track:9c9561bd2d09803fbb53ec9af65f12c743fe905f075de0f9430a618b32910372` |
| 9 | `lemma` | [coe_div](../../../../FieldTheoryAndPolynomials/FieldRatNamespacedPublic.lean/declarations/coe-div.md) | 75 | `result-track:f6bb4b2d7ca80f6772b4b734d9ee8aa0aa384f13fb43d914cff82295cb8748e1` |
| 10 | `lemma` | [coe_zpow](../../../../FieldTheoryAndPolynomials/FieldRatNamespacedPublic.lean/declarations/coe-zpow.md) | 76 | `result-track:d0c13359d6ed056c23d10a262ae1236462691564d8fc8a04ce07a3b353a49efe` |
| 11 | `lemma` | [inv_def](../../../../FieldTheoryAndPolynomials/FieldRatNamespacedPublic.lean/declarations/inv-def.md) | 78 | `result-track:b908b4a039e98ee8fd9e99466d688500ac83855639dbc6db9cfc48051a317145` |
| 12 | `lemma` | [div_def](../../../../FieldTheoryAndPolynomials/FieldRatNamespacedPublic.lean/declarations/div-def.md) | 79 | `result-track:287a06dfc18f089e02069f1c7a32c34b0072662a563ab2d9b53e77ddbb313aff` |
| 13 | `theorem` | [divNat_eq_div](../../../../FieldTheoryAndPolynomials/FieldRatNamespacedPublic.lean/declarations/divnat-eq-div.md) | 82 | `result-track:d0b4594e8a5a764a41d4cf8b4cbbf92c561d6c50f0a55d8af96d8cede90fac70` |
| 14 | `lemma` | [num_inv_of_ne_zero](../../../../FieldTheoryAndPolynomials/FieldRatNamespacedPublic.lean/declarations/num-inv-of-ne-zero.md) | 87 | `result-track:38ae9de5510468495d84d80088852550733c36fd3fa344603ab610eca4531e3d` |
| 15 | `lemma` | [den_inv_of_ne_zero](../../../../FieldTheoryAndPolynomials/FieldRatNamespacedPublic.lean/declarations/den-inv-of-ne-zero.md) | 93 | `result-track:fd23e86ffbf248e9453235c904a0d82cb545e8ec9b460528666c683d900113e6` |
| 16 | `lemma` | [num_div_den](../../../../FieldTheoryAndPolynomials/FieldRatNamespacedPublic.lean/declarations/num-div-den.md) | 98 | `result-track:84dd35251a1a45172f1b30c3bf1b5789297f5889197e6797060d182f818a256c` |
| 17 | `instance` | [instSemifield](../../../../FieldTheoryAndPolynomials/FieldRatNamespacedPublic.lean/declarations/instsemifield.md) | 103 | `declaration-track:178d8d4d033b8309966852fdcabb0d8da4966673370b044a844fa84e148ec6f3` |
| 18 | `theorem` | [NNRatCast.ofScientific_eq_ite](../../../../FieldTheoryAndPolynomials/FieldRatNamespacedPublic.lean/declarations/nnratcast-ofscientific-eq-ite.md) | 116 | `result-track:0b9d293731f38af6ab77fb1b6bc509cea4c28f77ecfbd38c079fb283eff41af4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3528a663fe5dc1cddb7a98f1afb639ee0076bb40ab955713f91668d95adf782 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Rat/Varianta3a483d80aa94288c3f68cc1fd7df1339ceb491ac7365b6a308bc01b515757fa.lean","GRWTSK/_verification/specifications/Algebra/Rat/Varianta3a483d80aa94288c3f68cc1fd7df1339ceb491ac7365b6a308bc01b515757fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
