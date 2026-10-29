# Verification target: Lie Free Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3f74866890b3c42f9c26d5c5e0c61c9b9c4d481",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Free/Variant7d764c5191cc1a04e372b684da3b824895e07d61d80b71e0c0665ab1ba20d992.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3f74866890b3c42f9c26d5c5e0c61c9b9c4d481`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Free/Variant7d764c5191cc1a04e372b684da3b824895e07d61d80b71e0c0665ab1ba20d992.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Free/Variant7d764c5191cc1a04e372b684da3b824895e07d61d80b71e0c0665ab1ba20d992.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FreeNonUnitalNonAssocAlgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.NonUnitalNonAssocAlgebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.UniversalEnveloping` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Ring` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rel](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/rel.md) | 82 | `declaration-track:3733087f9fc966660f160f70314224e3057bb97b05b4c4a6be993c6fb7baabd5` |
| 2 | `theorem` | [Rel.addLeft](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/rel-addleft.md) | 92 | `result-track:8b357a6cdd72cefadc1d2aa979c08a2cfeaf60cd2cbee044b724e2ecc6e52c39` |
| 3 | `theorem` | [Rel.neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/rel-neg.md) | 95 | `result-track:353dc6dbc5d31202bce7b7059f25d1e09418569d01207bac4bf45de62cf3ede2` |
| 4 | `theorem` | [Rel.subLeft](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/rel-subleft.md) | 98 | `result-track:11a6c583cc0243476d935ee5c6a18d676df600b4f58d8bbf97613ef56834a095` |
| 5 | `theorem` | [Rel.subRight](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/rel-subright.md) | 101 | `result-track:605196eb473b336cda7ec940250a829fa2038f5a2171fa0336fb3e7d97b8cb64` |
| 6 | `theorem` | [Rel.smulOfTower](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/rel-smuloftower.md) | 104 | `result-track:1b99f752914212ad3ff0a32d8b0a00839ed27d0bfa8cf6730f1543a0a462782b` |
| 7 | `def` | [FreeLieAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/freeliealgebra.md) | 125 | `declaration-track:b725fe21b0c94d5573278cc1acb5d7aad4bd66e081229974c81b29a42c062524` |
| 8 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/instance-source-edition-8.md) | 128 | `declaration-track:8455f3e51324b8dd43531ded4b1d3095550fd9c2bc801d8e190ddcd821915f0c` |
| 9 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/instance-source-edition-5.md) | 132 | `declaration-track:4555cf7f8174f367d4f76067b153bc41b97fd66a99cd917b9bdc8d89f9415efe` |
| 10 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/instance-source-edition-13.md) | 135 | `declaration-track:f63e953d4774c6a3e9a356103aef756ce293bb4935366cd323a3cca7119b1da9` |
| 11 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/instance-source-edition-12.md) | 139 | `declaration-track:f5b37e653fe20d429386cd31647fc5281ab5532c7f0ef20c054177b603800c38` |
| 12 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/instance-source-edition-9.md) | 141 | `declaration-track:86f24df531e2d0e21490f62a3482d376d827033f864a7623a562bf9df8b70ecc` |
| 13 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/instance-source-edition-6.md) | 144 | `declaration-track:48f86d841c19fc635d90aefede48e07ed4f4c0e0a351bfa01a6a090a05a175c6` |
| 14 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/instance-source-edition-4.md) | 146 | `declaration-track:4509336b0b335e353cd02bf994978d496c8ff966f81b4feedd89943f85275c29` |
| 15 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/instance.md) | 149 | `declaration-track:05ea503cd9cbd2eaffc81d8f4a4d76f71dd3e09ea305f577dd0227d66053b763` |
| 16 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/instance-source-edition-3.md) | 153 | `declaration-track:2a2127634919dac9ae7c30cad0e5f2f623919bbf01250852fae32a5d71826532` |
| 17 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/instance-source-edition-7.md) | 156 | `declaration-track:77abd6532fc7f574c70f6dbbf9053993796fb8d1d4cea47bd089fc9ad45b0dab` |
| 18 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/instance-source-edition-10.md) | 160 | `declaration-track:cd574af5aa4bcca8d16212ff695c97b1a6ec7d207fc3c51d1b02f8b686f4adad` |
| 19 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/instance-source-edition-11.md) | 167 | `declaration-track:d6144f62eed581e887f09ddf61d27726819cdd40ee71564dcff274f84aa6d47b` |
| 20 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/instance-source-edition-2.md) | 174 | `declaration-track:29452e8ff69649459c3eb9a3712cfb5a881bda472e742a069e5a49e6595b7369` |
| 21 | `def` | [of](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/of.md) | 184 | `declaration-track:c6405d34736a7e38cfedc7339ea792394da886f939a8a7c2520f6bd3824dc6dc` |
| 22 | `def` | [liftAux](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/liftaux.md) | 189 | `declaration-track:da4507794cbfe3104379da8977fc3c0883adf858b29762c7af31aa420672cae9` |
| 23 | `theorem` | [liftAux_map_smul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/liftaux-map-smul.md) | 192 | `result-track:ef988dc67ded9ed47dcf2c4010d2eb9487a4de047abb119cd1d293880bf706c8` |
| 24 | `theorem` | [liftAux_map_add](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/liftaux-map-add.md) | 196 | `result-track:ffe913660e817c713c917f84b65eac978f2b48251f9824ff3c9431bbc2ca12fa` |
| 25 | `theorem` | [liftAux_map_mul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/liftaux-map-mul.md) | 200 | `result-track:44202ea373b15f4d181e4e0bb0d3f6542bd3a0c568e4cb66f0cda8a2df91fcdf` |
| 26 | `theorem` | [liftAux_spec](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/liftaux-spec.md) | 204 | `result-track:d7b2d2eb49b19fa2141b23cbef8a23fd3d6480b186e3d85eb31be940c39e9ffd` |
| 27 | `def` | [mk](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/mk.md) | 216 | `declaration-track:8b14edaed4c5c5522ec996e2626879c5e8893a251e2c79dc84e4d7b454354548` |
| 28 | `def` | [lift](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/lift.md) | 225 | `declaration-track:d8bd6b1e1240c4c9452f5ae57bca232d1df4d878f6af05f0d94d2c04068ab5c2` |
| 29 | `theorem` | [lift_symm_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/lift-symm-apply.md) | 241 | `result-track:693510b9a3ef85c1341e279f4cf0b5f392e76195452e67d454bc23705599f93e` |
| 30 | `theorem` | [of_comp_lift](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/of-comp-lift.md) | 246 | `result-track:d5c1ea74a49a1bc4fe2c560ee7dd6d08b9bca397f27ca91519df73801b4c3aa5` |
| 31 | `theorem` | [lift_unique](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/lift-unique.md) | 249 | `result-track:f1a33b5095b442a831acce668de2446e6093d7e52927953dd4320a1c5ace0492` |
| 32 | `theorem` | [lift_of_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/lift-of-apply.md) | 253 | `result-track:db17fdc0b53eacd075021d8f697b2e2b86eaf777850c61dc51f759f557cff3b2` |
| 33 | `theorem` | [lift_comp_of](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/lift-comp-of.md) | 257 | `result-track:dae39dc990805c9564c788cfff1930225df53198c668676f9c3f62a8def2f9bd` |
| 34 | `theorem` | [hom_ext](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/hom-ext.md) | 261 | `result-track:4cab9106c43b1b8cb9f0e11eba39eea0e120b52079303ae786a78e918f0fa7af` |
| 35 | `def` | [universalEnvelopingEquivFreeAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieFreeNamespaced.lean/declarations/universalenvelopingequivfreealgebra.md) | 271 | `declaration-track:633ba3c4cbb4676f10dfb12f77c46ed96d207bd448aca9ad80850b5a453903ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc9e07171f0c53a30045e7291150653cf02a3ad75b7cdc86c9b9d21c2f8ef240 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Free/Variant7d764c5191cc1a04e372b684da3b824895e07d61d80b71e0c0665ab1ba20d992.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Free/Variant7d764c5191cc1a04e372b684da3b824895e07d61d80b71e0c0665ab1ba20d992.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
