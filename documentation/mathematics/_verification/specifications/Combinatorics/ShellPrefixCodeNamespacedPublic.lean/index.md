# Verification target: Shell Prefix Code Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8ca1b1143fb8c5e71226c2db770e9b721ee383f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variant6e78f6ed1ecfe789a6b57250430118c10f0cdea8f222e474df188d10a5d3dcc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ShellPrefixCodeNamespacedPublic.lean/index.md) · [Full source](../../../../Combinatorics/ShellPrefixCodeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8ca1b1143fb8c5e71226c2db770e9b721ee383f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variant6e78f6ed1ecfe789a6b57250430118c10f0cdea8f222e474df188d10a5d3dcc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variant6e78f6ed1ecfe789a6b57250430118c10f0cdea8f222e474df188d10a5d3dcc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RawProductDyadicInterval](../../../../Combinatorics/ShellPrefixCodeNamespacedPublic.lean/declarations/rawproductdyadicinterval.md) | 39 | `declaration-track:af0ad4d5d9e0ffad8174dbbd3a46bb7e69f2537d1301ec55a9fb3e23f509d11e` |
| 2 | `def` | [width](../../../../Combinatorics/ShellPrefixCodeNamespacedPublic.lean/declarations/width.md) | 47 | `declaration-track:0e88b48e83d50fd532892a5479ac5bde121eb87bba955f0d7e137072917a6bcb` |
| 3 | `def` | [lower](../../../../Combinatorics/ShellPrefixCodeNamespacedPublic.lean/declarations/lower.md) | 50 | `declaration-track:f01c8252ec7a94f3ac32aaae5fdbf494e52f9ab644e67ea005a6f8b29e7658ca` |
| 4 | `def` | [upper](../../../../Combinatorics/ShellPrefixCodeNamespacedPublic.lean/declarations/upper.md) | 53 | `declaration-track:ff166cc4948f379a741d8da306b7452562504cc95a341c2f761f36046437d421` |
| 5 | `def` | [carrier](../../../../Combinatorics/ShellPrefixCodeNamespacedPublic.lean/declarations/carrier.md) | 56 | `declaration-track:75b2402e40326efb972a6c50fde89cd6481bfedd629bee6ef19042fbc8fd4e53` |
| 6 | `theorem` | [width_pos](../../../../Combinatorics/ShellPrefixCodeNamespacedPublic.lean/declarations/width-pos.md) | 60 | `result-track:a283e49769186b7aa23733aaa666222086cbe423a570b3a68a16bb8ffd4d4e87` |
| 7 | `theorem` | [lower_lt_upper](../../../../Combinatorics/ShellPrefixCodeNamespacedPublic.lean/declarations/lower-lt-upper.md) | 64 | `result-track:55bf56f717489548c823bdd830d946696a805cd09db94ec1ceb028c9f18f9422` |
| 8 | `theorem` | [mem_carrier_iff](../../../../Combinatorics/ShellPrefixCodeNamespacedPublic.lean/declarations/mem-carrier-iff.md) | 70 | `result-track:b444ee101b530f7697aa2d3ddd95ca9b56de47ed17f859338a7ee4af68e5ecdd` |
| 9 | `structure` | [RawShellPrefixCode](../../../../Combinatorics/ShellPrefixCodeNamespacedPublic.lean/declarations/rawshellprefixcode.md) | 78 | `declaration-track:68acd495e7b2ac12f9c98141b9e07f5ae1ff25c5e51d0274598fdfcdcf2a7f9a` |
| 10 | `theorem` | [exists_rawShellPrefixCode](../../../../Combinatorics/ShellPrefixCodeNamespacedPublic.lean/declarations/exists-rawshellprefixcode.md) | 95 | `result-track:3e1e4afd35206cf2296fc05877892fd538540d3a9e9807ad79cf873ea4858e4f` |
| 11 | `def` | [rawIntervalToProductInterval](../../../../Combinatorics/ShellPrefixCodeNamespacedPublic.lean/declarations/rawintervaltoproductinterval.md) | 258 | `declaration-track:d83a0d8ee44d421d09b553b5d9c46f745279574ed94d618a2d2786575402d4e6` |
| 12 | `theorem` | [rawIntervalToProductInterval_carrier](../../../../Combinatorics/ShellPrefixCodeNamespacedPublic.lean/declarations/rawintervaltoproductinterval-carrier.md) | 278 | `result-track:dcba936cd49d153debd1ac30a92310bae65a4cd729928ab5cd9e65179108bad3` |
| 13 | `structure` | [TypeIIShellPrefixCode](../../../../Combinatorics/ShellPrefixCodeNamespacedPublic.lean/declarations/typeiishellprefixcode.md) | 287 | `declaration-track:2e9cf265afaef12effa49b8948c676e6a9ac200e8b9a213dfba34cfed84c42a4` |
| 14 | `theorem` | [shellPrefix_has_disjointDyadicCode](../../../../Combinatorics/ShellPrefixCodeNamespacedPublic.lean/declarations/shellprefix-has-disjointdyadiccode.md) | 300 | `result-track:1fe4f2ce45e3a1fd069fd555cd81d3c61164747b19b993272e339de45ed4038f` |
| 15 | `theorem` | [shellPrefixMatrix_eq_sum_code](../../../../Combinatorics/ShellPrefixCodeNamespacedPublic.lean/declarations/shellprefixmatrix-eq-sum-code.md) | 385 | `result-track:3ba2690fd6422846663dc6a6c8b133a41700f72043dec77e45df710a51ec14ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec32ed19791c4f1355835e165165687e058eeac84866949c77d9f85bf819eb46 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variant6e78f6ed1ecfe789a6b57250430118c10f0cdea8f222e474df188d10a5d3dcc3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variant6e78f6ed1ecfe789a6b57250430118c10f0cdea8f222e474df188d10a5d3dcc3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
