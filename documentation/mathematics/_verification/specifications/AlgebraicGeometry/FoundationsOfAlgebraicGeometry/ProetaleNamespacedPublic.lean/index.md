# Verification target: Proetale Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e4f8499bec2f03d64e9198636581c6f2d2ea225",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Proetale/Varianteeeabf53db81ec738db8b75e308ff892380ec38c59b20ddc7d1e4311ae781e09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e4f8499bec2f03d64e9198636581c6f2d2ea225`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Proetale/Varianteeeabf53db81ec738db8b75e308ff892380ec38c59b20ddc7d1e4311ae781e09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Proetale/Varianteeeabf53db81ec738db8b75e308ff892380ec38c59b20ddc7d1e4311ae781e09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [proetalePrecoverage](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/proetaleprecoverage.md) | 60 | `declaration-track:3ea9af705416804b74adfb377e7c5a82b5a951ba04ba8ba1c460dfcdc8ad4aa8` |
| 2 | `lemma` | [proetalePrecoverage_le_precoverage_weaklyEtale](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/proetaleprecoverage-le-precoverage-weaklyetale.md) | 65 | `result-track:e25398297b2993f7c95f8ccd885bd5d3f8be62f92c200f7343d713118c08ccf4` |
| 3 | `lemma` | [proetalePrecoverage_le_fpqcPrecoverage](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/proetaleprecoverage-le-fpqcprecoverage.md) | 69 | `result-track:56e5c7c957bf6a13c0280095c44f2b91f95d86a6ea862388663b5d77f9ba749a` |
| 4 | `abbrev` | [proetaleTopology](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/proetaletopology.md) | 74 | `declaration-track:156d55aff6310258faa53221ab60da2fbb1479336dbb0a42e878ae092e7e4cd3` |
| 5 | `lemma` | [proetaleTopology_eq_propQCTopology](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/proetaletopology-eq-propqctopology.md) | 77 | `result-track:9fef3715f6370ffa86efa778b9478e6eb2fba7f32d0bb2ee2562cfc8ab87d681` |
| 6 | `lemma` | [etalePrecoverage_le_proetalePrecoverage](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/etaleprecoverage-le-proetaleprecoverage.md) | 80 | `result-track:2daa3a0240bb098403b85a7b08af71ab3bd512d03cf6d7588fad8a72585651ff` |
| 7 | `lemma` | [etaleTopology_le_proetaleTopology](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/etaletopology-le-proetaletopology.md) | 87 | `result-track:bcd1466d6679c960d331384f28c74aef0b3353a371d1b49b6a07d29bc5a7eb65` |
| 8 | `lemma` | [proetaleTopology_le_fpqcTopology](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/proetaletopology-le-fpqctopology.md) | 90 | `result-track:07d63e1c5b4bec8e7f43a4a61ebd6548f2fdf13078d1c5f2d8bc63d5d71e6675` |
| 9 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 93 | `declaration-track:db1a9428d508913313b2bf7593f93eb5ea4e7bfbd81a7e94a136658d2283d178` |
| 10 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 96 | `declaration-track:9a421595e309b818d1f1e0c1389fef3376b17f6923460879c45f77cd2f3c9858` |
| 11 | `def` | [ProEt](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/proet.md) | 108 | `declaration-track:d5c46366a36d8c8e165dbfd898c08912240fc359b6cfc71ffdd53b774285aa3f` |
| 12 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 116 | `declaration-track:49e416b713872e3a8c656200139caa6645448c291f54ebb1304a52316a1bf340` |
| 13 | `def` | [mk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/mk.md) | 122 | `declaration-track:f812216e7239b1c1d7cadb0631aaa02417583a1398bdc10d8d38492e5024965b` |
| 14 | `def` | [forget](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/forget.md) | 127 | `declaration-track:b0c883ae4f0ed190d9a58aa48d2f5ff7016b7bf6d375b878270dd4917bb90be4` |
| 15 | `def` | [forgetFullyFaithful](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/forgetfullyfaithful.md) | 131 | `declaration-track:b62c6724492f2f47882df897a073271685c75acdf7695c6159a2e8a61187f004` |
| 16 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 135 | `declaration-track:76ba6b24e5ad59d452f622f8941db64c9ee7aa07bdfe3b952a047c1118a73e2f` |
| 17 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 139 | `declaration-track:8947545fbdbcb33787cdd7fba4d64c7f486a7736edc52dd90f8391d9dd753b5b` |
| 18 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/instance.md) | 143 | `declaration-track:0523dcd6d5ffe0d2dd01b9941db0969a3c999ace33be62182101e7921b9345ff` |
| 19 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 146 | `declaration-track:c720e51d0963d0472ea11693beb82f71cc1a5a1948c7f7910b83b28fc93678cf` |
| 20 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 150 | `declaration-track:449c7ccccc61a41010e2c9ab7165cacb371e59cb63b0fec5ad442f9ac9761026` |
| 21 | `def` | [precoverage](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/precoverage.md) | 155 | `declaration-track:75df4c941711f03d7f3c33d1b464c580c5eeed0c2a51c39b13867905e88f90e3` |
| 22 | `abbrev` | [topology](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/topology.md) | 159 | `declaration-track:db581325b0f23f9aa48f349b1f6bdfcb5b2a0f5683003c9247cf3a3929c7dddb` |
| 23 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 163 | `declaration-track:1d230eca92a6947f3e33c9a1afacd617373d56f0b002d30ea9a0f0c7313874e8` |
| 24 | `lemma` | [topology_eq_inducedTopology](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/topology-eq-inducedtopology.md) | 168 | `result-track:aa504da77ade90db15586c972fbde55008de2e511f9db56e9433aaa63a55001f` |
| 25 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 173 | `declaration-track:515b6a5101323311f0a72cb8eabe60c958ed5a19b510a3b8abe03ae476a9b15b` |
| 26 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 176 | `declaration-track:99188608f4fde50c76636961611c20ee180d80126b036504df6f259e27f84470` |
| 27 | `def` | [equivOfIsEmpty](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/equivofisempty.md) | 181 | `declaration-track:139d84093fee34cf3d093257bd85d4b2ac383cf98a937df5e906772d89a3bcd9` |
| 28 | `lemma` | [bot_mem_topology](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/bot-mem-topology.md) | 187 | `result-track:12d8eba4e5aa176c849bb5eb222872fc45d0ba6f416bbb8a74010d823ce9cc5e` |
| 29 | `lemma` | [topology_eq_top_of_isEmpty](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProetaleNamespacedPublic.lean/declarations/topology-eq-top-of-isempty.md) | 192 | `result-track:4f3acdb5fbf8f769082aa92f92566f3329b7768e5824e7133145bee59920259e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09111cd85854b5e5293892eedc6aee85c15f6af43aa632cab6995030756e6453 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Proetale/Varianteeeabf53db81ec738db8b75e308ff892380ec38c59b20ddc7d1e4311ae781e09.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Proetale/Varianteeeabf53db81ec738db8b75e308ff892380ec38c59b20ddc7d1e4311ae781e09.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
