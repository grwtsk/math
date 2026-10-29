# Verification target: Linear Recurrence Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "244bf25e744e74214b7d484973ce373965864431",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearRecurrence/Variant4051e6c800fadbe3ae4e6f67e8249cfa256dbb0dc58c31cb5d61a056d7272c54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `244bf25e744e74214b7d484973ce373965864431`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearRecurrence/Variant4051e6c800fadbe3ae4e6f67e8249cfa256dbb0dc58c31cb5d61a056d7272c54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearRecurrence/Variant4051e6c800fadbe3ae4e6f67e8249cfa256dbb0dc58c31cb5d61a056d7272c54.lean.json)

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
| 1 | `structure` | [LinearRecurrence](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/linearrecurrence.md) | 53 | `declaration-track:1f22e760cbf4504502faa36871367cc5d780057c612dde5a3767a949e7b07f26` |
| 2 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/instance.md) | 59 | `declaration-track:1657aac2606b593914d30df549c1c59f2f306b18110eb825cd083b7add39af4e` |
| 3 | `def` | [IsSolution](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/issolution.md) | 70 | `declaration-track:b0c2ad054ee0b491fb7ae5a3d94a75b8718615e033a1f1a0b3e381cb60cf9174` |
| 4 | `def` | [mkSol](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/mksol.md) | 75 | `declaration-track:0de9f0b0a7f5d3257f88874c30e6e9e5dfd7642944e8adcf977b7f3c6ea9d228` |
| 5 | `theorem` | [is_sol_mkSol](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/is-sol-mksol.md) | 84 | `result-track:87c2bc29e5825f56e8a1e6a19c84b2a7e57e3918b4812b8bea72691db3cc035b` |
| 6 | `theorem` | [mkSol_eq_init](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/mksol-eq-init.md) | 90 | `result-track:fd2c5a9b50bc4bdba658811617e851d97d468f2ac6c4501befd940ff7691718a` |
| 7 | `theorem` | [eq_mk_of_is_sol_of_eq_init](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/eq-mk-of-is-sol-of-eq-init-source-edition-2.md) | 97 | `result-track:50627bd34799ad756ad5319c577ba871e11cd3c71d8cb631708f589f7b211465` |
| 8 | `theorem` | [eq_mk_of_is_sol_of_eq_init'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/eq-mk-of-is-sol-of-eq-init.md) | 112 | `result-track:0185182ef675221ae19d082cf577f5d683866e6f746f38a337da151a4a347a23` |
| 9 | `def` | [solSpace](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/solspace.md) | 117 | `declaration-track:84f587da2bbfac693a3e92d13a0f10335d47c6955505edafca80c8cd33fd77f3` |
| 10 | `theorem` | [is_sol_iff_mem_solSpace](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/is-sol-iff-mem-solspace.md) | 125 | `result-track:5809ce5cc2ecc6538295c165952bb2ca647262d01949e3eef6e72d5d364fa980` |
| 11 | `def` | [toInit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/toinit.md) | 130 | `declaration-track:0dbfb18c7ea0dcc7c814c92ee4ef06872810716ccc61a77dcbbd6137806ade44` |
| 12 | `theorem` | [mkSol_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/mksol-injective.md) | 142 | `result-track:1b9ac11c422f0535866124fab0dfdd8157c681ae6a4339c3abb331632ff1d5d8` |
| 13 | `def` | [basis](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/basis.md) | 147 | `declaration-track:cf62d8c7b8c1aea7e8d47c88afdd97a37137d0a50dd374be4ef633640d6c2a60` |
| 14 | `theorem` | [repr_basis_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/repr-basis-eq.md) | 151 | `result-track:704304054ef1b72413a1b4b8497e1e1a785c3a0ff2f2a1a9185c55700d52f01d` |
| 15 | `theorem` | [repr_basis_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/repr-basis-apply.md) | 157 | `result-track:0ae53184bdeee7681e2312cefc941f67e9de7e77d21322c73c737b6ad2004994` |
| 16 | `theorem` | [eq_iff_eqOn_range_order](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/eq-iff-eqon-range-order.md) | 161 | `result-track:b8e3037b42591b13bf14df245b44c07506a6516e3f50ea8f05974fe1635c5889` |
| 17 | `def` | [tupleSucc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/tuplesucc.md) | 178 | `declaration-track:4920a00542d62c523ed7b2639a50fb501be987ddf3b79dd3a1fadf56a56660f8` |
| 18 | `theorem` | [solSpace_rank](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/solspace-rank.md) | 198 | `result-track:a9bca9b60b5465ca6421d457da728ef4970d1f3c458ec29a5588d19c7bf8bcf6` |
| 19 | `def` | [charPoly](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/charpoly.md) | 209 | `declaration-track:e2ec956f9eb23edeff1d9032562f9656ab159af1aa878bd13a9a294e4d9ff964` |
| 20 | `theorem` | [charPoly_degree_eq_order](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/charpoly-degree-eq-order.md) | 213 | `result-track:742c5a1ea2ff15c8c3af36562d56cc6e2bb91b2a57c6c735da9e0d2070bf8110` |
| 21 | `theorem` | [charPoly_monic](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/charpoly-monic.md) | 219 | `result-track:209aa8cf4f53ac2bb431ce358488a8d66a0e0db1992a786bef1d448529ba953f` |
| 22 | `theorem` | [geom_sol_iff_root_charPoly](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/LinearRecurrencePublic.lean/declarations/geom-sol-iff-root-charpoly.md) | 229 | `result-track:ab55f38ca4a23255c3117a740d07b395e49e32acfc8e7b2144ecc93346e1de5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0112cd0623bedde615956bcf3414093e963a35fc18c8e32839210e7866067304 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/LinearRecurrence/Variant4051e6c800fadbe3ae4e6f67e8249cfa256dbb0dc58c31cb5d61a056d7272c54.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/LinearRecurrence/Variant4051e6c800fadbe3ae4e6f67e8249cfa256dbb0dc58c31cb5d61a056d7272c54.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
