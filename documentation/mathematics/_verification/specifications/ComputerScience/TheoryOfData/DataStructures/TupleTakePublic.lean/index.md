# Verification target: Tuple Take Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c492e09a7729c4146ab9981b0c6f553e6a364c45",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantc46f5ecc97170433e123f865af980100cb47d2152916c9364a69b0b1d658ddb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c492e09a7729c4146ab9981b0c6f553e6a364c45`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantc46f5ecc97170433e123f865af980100cb47d2152916c9364a69b0b1d658ddb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantc46f5ecc97170433e123f865af980100cb47d2152916c9364a69b0b1d658ddb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [take](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/declarations/take.md) | 30 | `declaration-track:da5591c15bdfe7aa1a37e3349199c95407e8ae02b83329e0ee27e1c9bca523db` |
| 2 | `theorem` | [take_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/declarations/take-apply.md) | 34 | `result-track:c58d7b3d220ee286966bce103b15af32912834dc18cac29dcd22d508910f1d91` |
| 3 | `theorem` | [take_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/declarations/take-zero.md) | 38 | `result-track:c8b455f9c942334c6039c1ebd9b70faa1c1fdd94e018636ee55dbdaeaffa2128` |
| 4 | `theorem` | [take_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/declarations/take-one.md) | 42 | `result-track:5d0103c048780fc59168f86d80b34f628e83148af4dd42c921c86d6039e3bbab` |
| 5 | `theorem` | [take_eq_init](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/declarations/take-eq-init.md) | 48 | `result-track:10c29e9c21b44931e7f9dc9d181dcb61464020a11dfed9ceff5011017056557d` |
| 6 | `theorem` | [take_eq_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/declarations/take-eq-self.md) | 52 | `result-track:364db8d9a8110aaf19df71beef89693d628f98a57aadb8356eebf70e0d71d9b2` |
| 7 | `theorem` | [take_take](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/declarations/take-take.md) | 57 | `result-track:ab0a2cbcfd41e2913b113adb7c1789918b5057a9829b02afb0e22512131c82aa` |
| 8 | `theorem` | [take_init](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/declarations/take-init.md) | 61 | `result-track:4130fd1fef2ba4df169cb75fe79a6a338fd753b0ed90bdb67ef5603d5821deb4` |
| 9 | `theorem` | [take_repeat](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/declarations/take-repeat.md) | 64 | `result-track:4358116e1a373bcbd1ca3cb55f23f5fb664e379a2e7819fb23ecc1b04beff3e6` |
| 10 | `theorem` | [take_succ_eq_snoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/declarations/take-succ-eq-snoc.md) | 70 | `result-track:2c28299cff8ef8e81f95ad93fbf4ce899c3020365913026b4f89d5187e13c33d` |
| 11 | `theorem` | [take_update_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/declarations/take-update-of-lt.md) | 85 | `result-track:0f5e14d62f7e0ac31bb47420816c99cdd0360e10512f65a3efc877afb5834d83` |
| 12 | `theorem` | [take_update_of_ge](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/declarations/take-update-of-ge.md) | 96 | `result-track:0047fe305ebb1c75a1cc0643aa91c70662876ab14356dce121e07d89fa7c6633` |
| 13 | `theorem` | [take_addCases_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/declarations/take-addcases-left.md) | 107 | `result-track:020b2ce61f325ec826c5b8033afb5d56d93873c00c57e35cafdabfb81258605c` |
| 14 | `theorem` | [take_append_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/declarations/take-append-left.md) | 116 | `result-track:b789c8f418dd0e164cd9e8c58d149ce11a19bfdf14a24176aed41c11f8da90dd` |
| 15 | `theorem` | [take_addCases_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/declarations/take-addcases-right.md) | 122 | `result-track:6bb0178bfab1692c1ee0a412a796496286b7dcfe5aff87850dd7f940397f3fd8` |
| 16 | `theorem` | [take_append_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/declarations/take-append-right.md) | 133 | `result-track:4e5dcc8e2b6c8175811347a564ea2d2bd8be966fd2182a493a3de09c688e5760` |
| 17 | `theorem` | [ofFn_take_eq_take_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/declarations/offn-take-eq-take-offn.md) | 139 | `result-track:e310a2be77e9da255581b0f25b2802cb636706c4aee0508b7d1b9823918ba35a` |
| 18 | `theorem` | [ofFn_take_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/declarations/offn-take-get.md) | 144 | `result-track:77cf76db8348c146da572935206b3cf42716c7cc014fea8570e6f3ff1630adf2` |
| 19 | `theorem` | [get_take_eq_take_get_comp_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/declarations/get-take-eq-take-get-comp-cast.md) | 149 | `result-track:6417917f4f6425cbc544e9e70cbfe3e15bec94d13c7686039dcc9bf84681af6a` |
| 20 | `theorem` | [get_take_ofFn_eq_take_comp_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleTakePublic.lean/declarations/get-take-offn-eq-take-comp-cast.md) | 155 | `result-track:1704e0da7114802a35cf82cefe619f85e88eef3c210d23ed9c3293912004adcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a5f473543763429fd2c48803817bd9fdf0c83004c5a418b46a86b8eb16bf308 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantc46f5ecc97170433e123f865af980100cb47d2152916c9364a69b0b1d658ddb6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Take/Variantc46f5ecc97170433e123f865af980100cb47d2152916c9364a69b0b1d658ddb6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
