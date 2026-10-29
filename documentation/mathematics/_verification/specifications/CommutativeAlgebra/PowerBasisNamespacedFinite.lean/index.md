# Verification target: Power Basis Namespaced Finite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b63784ec36c83f49f337f05881089cdeab597c4c",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b63784ec36c83f49f337f05881089cdeab597c4c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Minpoly.Field` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SModEq` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.BigOperators` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PowerBasis](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/powerbasis.md) | 65 | `declaration-track:e744db7a1c522ef225e826a509d3e544a1c6ca21c008d1595094873324354f48` |
| 2 | `theorem` | [coe_basis](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/coe-basis.md) | 78 | `result-track:4a879ef3d50a26aec2d55da7d8cef741fca17193611da9632cc7d67470ec3a43` |
| 3 | `theorem` | [finite](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/finite.md) | 82 | `result-track:aa4ea6aa174c7549282d4c4d39e0c0ebedb51cd1534a63d61380c902764c9408` |
| 4 | `theorem` | [finrank](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/finrank.md) | 85 | `result-track:fcf749e4fbc47fd6e4cde5cb57963be358b72a817ef3d11901f692825aec2ad0` |
| 5 | `theorem` | [mem_span_pow'](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/mem-span-pow.md) | 89 | `result-track:7f753bd56d0a96c35c24e10d73dcc7889bab858c2c209342083bf91bf11f24ac` |
| 6 | `theorem` | [mem_span_pow](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/mem-span-pow-source-edition-2.md) | 104 | `result-track:977ffb597e45da348c649586e317a71bc6f302d7916a33bc9402dea611776053` |
| 7 | `theorem` | [dim_ne_zero](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/dim-ne-zero.md) | 117 | `result-track:706638eaca53b82fe1200f1e044215303aa9dd1538d7833284a54595629e7347` |
| 8 | `theorem` | [dim_pos](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/dim-pos.md) | 120 | `result-track:4254dc608ef26a149e10dae7ec688e25026567340f664c9aadf142e4bc58bd94` |
| 9 | `theorem` | [exists_eq_aeval](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/exists-eq-aeval.md) | 123 | `result-track:3b7f211bc2d0ce3b391dd14a8e1c0bfb76ceb56a82b81ad9a6171511b2e90811` |
| 10 | `theorem` | [exists_eq_aeval'](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/exists-eq-aeval-source-edition-2.md) | 127 | `result-track:d361060f2bff336fc5df592cc72e8ac99efbaca2b2fe4289625ebcf974922e7c` |
| 11 | `theorem` | [algHom_ext](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/alghom-ext.md) | 132 | `result-track:f81b2084d6e7e42654a067dc85210dbded1b2264e77a045e986ebe8ac4d6c750` |
| 12 | `theorem` | [exists_smodEq](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/exists-smodeq.md) | 139 | `result-track:64a51dd488a72c855bd44247790887f6e38db52d7c86bfbb91eb164a5f76526d` |
| 13 | `theorem` | [exists_gen_dvd_sub](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/exists-gen-dvd-sub.md) | 158 | `result-track:18bd445fb9e2fbe4f1165d2ae813e15d7f82fd897b286662ae2c277e7c001698` |
| 14 | `def` | [minpolyGen](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/minpolygen.md) | 166 | `declaration-track:c7198e9c8e056016b7d627a418b8d8290625e710ebc0795de11ea751964ab97c` |
| 15 | `theorem` | [aeval_minpolyGen](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/aeval-minpolygen.md) | 169 | `result-track:2074ae1239590771e08a94ac3704e45b48e2bf45621d86db130d3d336eb58c38` |
| 16 | `theorem` | [minpolyGen_monic](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/minpolygen-monic.md) | 175 | `result-track:a1246040f20627eb72b283a0cdfc14455a9689164319226bc26681bdb076594a` |
| 17 | `theorem` | [dim_le_natDegree_of_root](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/dim-le-natdegree-of-root.md) | 181 | `result-track:5d8e317e9834e3ed4d8cd15d185c83c0d72a4ec32fda9cf99b4ae19e71fc6f27` |
| 18 | `theorem` | [dim_le_degree_of_root](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/dim-le-degree-of-root.md) | 190 | `result-track:a94869a17367d4a0e40d26d74520cf2538a31b6fb3b1f6c5b4a770c4c51faf7e` |
| 19 | `theorem` | [degree_minpolyGen](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/degree-minpolygen.md) | 195 | `result-track:35a0531c339b54ad18ee9bef0620c5d1312e6a04bf4841d6a9815143393c2dbc` |
| 20 | `theorem` | [natDegree_minpolyGen](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/natdegree-minpolygen.md) | 201 | `result-track:da13f24c42fdde32a8883fa4c5f381aa647e6b868940bec70afbe9d9a252c50b` |
| 21 | `theorem` | [minpolyGen_eq](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/minpolygen-eq.md) | 206 | `result-track:8d6e8905524e716bc03133815bdd1e850102334d68c50bef71570a32e5b61492` |
| 22 | `theorem` | [isIntegral_gen](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/isintegral-gen.md) | 212 | `result-track:732fef6c988a412ee31daa98094edd8f86147c55f740fb26b46b816456ae3ef3` |
| 23 | `theorem` | [degree_minpoly](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/degree-minpoly.md) | 216 | `result-track:f8ec04292bfd1989b07a4a2e647e53ce071348bf656b29dad474d1f4b798c068` |
| 24 | `theorem` | [natDegree_minpoly](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/natdegree-minpoly.md) | 220 | `result-track:c53d9d02661245f64680ca7f75f862104afe7d78cf93a42ea01b7acc4651ec3f` |
| 25 | `theorem` | [leftMulMatrix](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/leftmulmatrix.md) | 223 | `result-track:b99b6da3bf3f59afd3ac9d2011dffbf21fd82682e74296afd057143b18b6ac21` |
| 26 | `theorem` | [constr_pow_aeval](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/constr-pow-aeval.md) | 248 | `result-track:03eeff263951f7e500f180c3e8fa3d1abb9fb6879943c8f56d186f1477b38a3e` |
| 27 | `theorem` | [constr_pow_gen](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/constr-pow-gen.md) | 267 | `result-track:0807f183bc4a0d1b76d82456f178bf19efdfd545a9e8238873c60866ad2d5b27` |
| 28 | `theorem` | [constr_pow_algebraMap](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/constr-pow-algebramap.md) | 271 | `result-track:8fc3bbc250992997fd828eadfb31ed1b46cfb3a777e95f4aec39ec54479e0c4b` |
| 29 | `theorem` | [constr_pow_mul](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/constr-pow-mul.md) | 275 | `result-track:4ae5c720403e3e162986743f51020766a983fcf4be77f137b505f13135bcadbd` |
| 30 | `def` | [lift](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/lift.md) | 287 | `declaration-track:eb5e67e0b99b80ae4bf99503755d26e2c40cd4da1a1548c1dfd8a7c2a2e612f4` |
| 31 | `theorem` | [lift_gen](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/lift-gen.md) | 296 | `result-track:fd30761785f11f397cf42057aef75298b511d7a9af41734fc2bf4c848c1f7f74` |
| 32 | `theorem` | [lift_aeval](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/lift-aeval.md) | 301 | `result-track:8760b0532ae4cef10383cb1bb3af88c7ed02095a906f2713bd7c388e2ce4b952` |
| 33 | `def` | [liftEquiv](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/liftequiv-source-edition-2.md) | 313 | `declaration-track:87ea149869c696c46b244a3ebd492fddcdab81b1b4c68199a1d80e2963aec87d` |
| 34 | `def` | [liftEquiv'](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/liftequiv.md) | 323 | `declaration-track:70792c6bcb7afdb702250789e8ce907ddbbcd72478e350185353a3117320b8be` |
| 35 | `def` | [AlgHom.fintype](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/alghom-fintype.md) | 332 | `declaration-track:5109e787dedcf0ac38abd8097468cef53a2f65c44dbe92a5a8ef8e19f0f07512` |
| 36 | `def` | [equivOfRoot](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/equivofroot.md) | 343 | `declaration-track:3508b846f0b7cd77078bff06c10bbedb2db35691fbf28b4404b88bd263c324b3` |
| 37 | `theorem` | [equivOfRoot_aeval](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/equivofroot-aeval.md) | 357 | `result-track:7866a1eb0fa57b53e88dc47761808bf7c99822de836e593203756c5b0d238682` |
| 38 | `theorem` | [equivOfRoot_gen](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/equivofroot-gen.md) | 363 | `result-track:c24200a50496d736565d8d4107df1b1b4cd419350a438a2b44863696110f6e44` |
| 39 | `theorem` | [equivOfRoot_symm](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/equivofroot-symm.md) | 369 | `result-track:b38585af224f65117279051ba224e4222dc253fc47cca87e162fe708d298e104` |
| 40 | `def` | [equivOfMinpoly](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/equivofminpoly.md) | 381 | `declaration-track:9957d5ad7a1f24c8d47628decfff95a95e6553b19f1bc8cc6d291c0f23175348` |
| 41 | `theorem` | [equivOfMinpoly_aeval](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/equivofminpoly-aeval.md) | 386 | `result-track:97d97f454679bc0c8e52dd1f7b356769113a42a2aa457e0af7c1641f95008acc` |
| 42 | `theorem` | [equivOfMinpoly_gen](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/equivofminpoly-gen.md) | 392 | `result-track:2f38ed1c8436ec6206c71f54130e310479a3518698135f0ea076a5fa5f9a2edc` |
| 43 | `theorem` | [equivOfMinpoly_symm](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/equivofminpoly-symm.md) | 397 | `result-track:af8d624e5480203fea3d001581b0f06218abe57bb448bf6e1b09ebfc4f59a2e9` |
| 44 | `theorem` | [linearIndependent_pow](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/linearindependent-pow.md) | 410 | `result-track:fc87482eb90247b3c05aebddb23f0b4e92a4b05962edff01954516272c80d714` |
| 45 | `theorem` | [IsIntegral.mem_span_pow](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/isintegral-mem-span-pow.md) | 425 | `result-track:e3b4afe6aa6588953978f80ad76840b72ffbf1e555d3b2d4cf2bdba946868bb7` |
| 46 | `def` | [map](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/map.md) | 443 | `declaration-track:4dd73bc951b1c1c2507ea71e0c6b72316bc60863c7c9dc12e442b1bf1765ecc5` |
| 47 | `theorem` | [minpolyGen_map](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/minpolygen-map.md) | 451 | `result-track:7c3cf132a37b12066342ac70b76c4ab61fd082462bbf81420a784db658ce651e` |
| 48 | `theorem` | [equivOfRoot_map](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/equivofroot-map.md) | 460 | `result-track:d982009e395f7fdb2c8ac1c644d619365930e505716a77330e23d6f3fd757f67` |
| 49 | `theorem` | [equivOfMinpoly_map](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/equivofminpoly-map.md) | 467 | `result-track:5b5acdc9918b724bd59be2ba04cd3a016b934a5817486c9894f77bf762e81afe` |
| 50 | `theorem` | [adjoin_gen_eq_top](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/adjoin-gen-eq-top.md) | 477 | `result-track:54cc9c76cc15ebf00ebd077d46ab5f6196e4d3ce559818def97991c547996218` |
| 51 | `theorem` | [adjoin_eq_top_of_gen_mem_adjoin](../../../../CommutativeAlgebra/PowerBasisNamespacedFinite.lean/declarations/adjoin-eq-top-of-gen-mem-adjoin.md) | 483 | `result-track:45132968652fade0d0d9a9f7d7815605a684acf79054d7c1293cec68141c3c91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7bd4b338850c59eb2988d6f749c372a6e559741c4a79927e997c17297288d2ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/PowerBasis/Variant44930391d1be4d95767bbddb3970541f77e9ea794a2d6543c1f9de7f20b964bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
