# Verification target: Lattice Prod

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e164198017a1cf1fa98584737c31c900ee960c7",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProd.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e164198017a1cf1fa98584737c31c900ee960c7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Fold` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sup_product_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProd.lean/declarations/sup-product-left-source-edition-2.md) | 32 | `result-track:e8d415fcef872be5bbd0ec314f678ee9c7ccfd26a59e178c926c27fc6a3f38d4` |
| 2 | `theorem` | [sup_product_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProd.lean/declarations/sup-product-right.md) | 36 | `result-track:5dd8e3ec1463addfb219eb920898e1fbbababa6bfd8021e1ce60a31a75905a3e` |
| 3 | `lemma` | [sup_prodMap](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProd.lean/declarations/sup-prodmap-source-edition-2.md) | 44 | `result-track:9188d5af6e5b03e205c496d9afe3d87550f430aa645d5e9a832e7e18e9e40234` |
| 4 | `theorem` | [inf_product_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProd.lean/declarations/inf-product-left.md) | 64 | `result-track:b87f11d1eb8ea42fd422277448cadcda3aae88b39610e58eb3689578d787808d` |
| 5 | `theorem` | [inf_product_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProd.lean/declarations/inf-product-right-source-edition-2.md) | 68 | `result-track:53c6d9b18a499a33c2345c5180fc0ff912ee57e5b5cb54d3c151428172fdf41a` |
| 6 | `lemma` | [inf_prodMap](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProd.lean/declarations/inf-prodmap-source-edition-2.md) | 76 | `result-track:e5cacde08a381ebb16a5ebad432bee75fabf25a281824a36901c541d21644e88` |
| 7 | `theorem` | [sup_inf_sup](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProd.lean/declarations/sup-inf-sup-source-edition-2.md) | 92 | `result-track:791c8912433e3ea79f4881aeb1f85bc4a83701fc3881940867aaedc016533f84` |
| 8 | `theorem` | [inf_sup_inf](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProd.lean/declarations/inf-sup-inf.md) | 102 | `result-track:c9febfd243a5eba9e2ac5efa769f5757ce190a6cf36b5d19a3567abb785d419a` |
| 9 | `theorem` | [sup'_product_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProd.lean/declarations/sup-product-left.md) | 116 | `result-track:85bc9141edd3414d2078162f4e8963296ad4147556710d36db25f8d9b7f0f099` |
| 10 | `theorem` | [sup'_product_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProd.lean/declarations/sup-product-right-source-edition-2.md) | 120 | `result-track:da9dfaeb758081e7d33f318bb6f99dd11664d6e51d0c8c1ea46288e15aae0384` |
| 11 | `lemma` | [prodMk_sup'_sup'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProd.lean/declarations/prodmk-sup-sup.md) | 128 | `result-track:0d6876d2d00a1a177d1e0735b6a201f3fcff107935670bafe35ff5270973b440` |
| 12 | `lemma` | [sup'_prodMap](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProd.lean/declarations/sup-prodmap.md) | 138 | `result-track:4a270ab086672f500dd94980bc9f06f9249b3e231c302d844f5d385614c7fcc1` |
| 13 | `theorem` | [inf'_product_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProd.lean/declarations/inf-product-left-source-edition-2.md) | 152 | `result-track:dfa6a54ec6474cebb73938c2f502ba4aa69fc98206573a68282f2c7f12d50584` |
| 14 | `theorem` | [inf'_product_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProd.lean/declarations/inf-product-right.md) | 156 | `result-track:3c09874648d757352f959417c95308b18730b00d7baa282604c89481cb4e042d` |
| 15 | `lemma` | [prodMk_inf'_inf'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProd.lean/declarations/prodmk-inf-inf.md) | 164 | `result-track:ed5467b2e50ae5736b31587ce8605acd2674f12735f8a73beb47649fdb050a95` |
| 16 | `lemma` | [inf'_prodMap](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProd.lean/declarations/inf-prodmap.md) | 170 | `result-track:6418e4511f08fb3565419077c5726e39a4a8d8c31213e384e68f905b696b6ff8` |
| 17 | `theorem` | [sup'_inf_sup'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProd.lean/declarations/sup-inf-sup.md) | 182 | `result-track:7344f22451349ac325fbba671cf42d13c74a5152077c73c5260f4faa2f887c8d` |
| 18 | `theorem` | [inf'_sup_inf'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProd.lean/declarations/inf-sup-inf-source-edition-2.md) | 186 | `result-track:e53252fd90062e476f09ac484bf2d50183a39f6c2371b655dbff50eecfdddf57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7209bd0f5e2c30eab0b2d811a7f43e4ed3fa3942d8c399e1dadd2258ee3586f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Prod/Variant3ecd9e4fbadd04f37fee26e221c63ec5094422c8ba8e6ef3fd468430abc3d702.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
