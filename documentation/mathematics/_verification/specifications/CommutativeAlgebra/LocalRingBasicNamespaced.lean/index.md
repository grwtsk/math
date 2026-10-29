# Verification target: Local Ring Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "808973e98e356917bc9a60348ddb99d07f5c6704",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variante4179cf73170b932ec390661819685a3f807c93d566bffe79846f72c79ce1c78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/LocalRingBasicNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/LocalRingBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `808973e98e356917bc9a60348ddb99d07f5c6704`.

Source path: `GRWTSK/Algebra/Basic/Variante4179cf73170b932ec390661819685a3f807c93d566bffe79846f72c79ce1c78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variante4179cf73170b932ec390661819685a3f807c93d566bffe79846f72c79ce1c78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalRing.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Nonunits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [of_isUnit_or_isUnit_of_isUnit_add](../../../../CommutativeAlgebra/LocalRingBasicNamespaced.lean/declarations/of-isunit-or-isunit-of-isunit-add.md) | 33 | `result-track:3920d906c784a2a67913cd5dccce0b0f7bc6d91511ae291d24807c0bdbfa73c7` |
| 2 | `theorem` | [of_nonunits_add](../../../../CommutativeAlgebra/LocalRingBasicNamespaced.lean/declarations/of-nonunits-add.md) | 38 | `result-track:fcb2684d7ba6e488900ecb0ff3bd27575cd5e987a835a56127333bfb1d27e760` |
| 3 | `theorem` | [of_unique_max_ideal](../../../../CommutativeAlgebra/LocalRingBasicNamespaced.lean/declarations/of-unique-max-ideal.md) | 50 | `result-track:64e1159333e114549bdef39f43dec8caae4cdb66e40de1f6e63ded473545ed81` |
| 4 | `theorem` | [of_unique_nonzero_prime](../../../../CommutativeAlgebra/LocalRingBasicNamespaced.lean/declarations/of-unique-nonzero-prime.md) | 63 | `result-track:832fda4460c645f3cb7998d0f736a450d18cc378e0c0d5bfdc0862c7d0636607` |
| 5 | `theorem` | [isUnit_or_isUnit_of_isUnit_add](../../../../CommutativeAlgebra/LocalRingBasicNamespaced.lean/declarations/isunit-or-isunit-of-isunit-add.md) | 75 | `result-track:9153df0a5c362c769d79f5c4e0f80814c83a92b94882ccde28d166a9e561a8d3` |
| 6 | `theorem` | [nonunits_add](../../../../CommutativeAlgebra/LocalRingBasicNamespaced.lean/declarations/nonunits-add.md) | 80 | `result-track:c50aef0fcf9d82e61b9d36dd967af3ef9d2a15b5691568659347d9ba02b14716` |
| 7 | `theorem` | [of_isUnit_or_isUnit_one_sub_self](../../../../CommutativeAlgebra/LocalRingBasicNamespaced.lean/declarations/of-isunit-or-isunit-one-sub-self.md) | 107 | `result-track:6a8161f555bc3be0b8a915ee81688160be6ff453dd4047dd5e28adf8914ac86a` |
| 8 | `theorem` | [isUnit_or_isUnit_one_sub_self](../../../../CommutativeAlgebra/LocalRingBasicNamespaced.lean/declarations/isunit-or-isunit-one-sub-self.md) | 117 | `result-track:765c4522dc10c7dd2205b23341650a624edbfcccdf0946ac8bc1d270bfdc7ea4` |
| 9 | `theorem` | [isUnit_of_mem_nonunits_one_sub_self](../../../../CommutativeAlgebra/LocalRingBasicNamespaced.lean/declarations/isunit-of-mem-nonunits-one-sub-self.md) | 120 | `result-track:d6d4a758ac0de34ba819ab75761159018a973d3b623c60a0a2f933bfe87ffcdf` |
| 10 | `theorem` | [isUnit_one_sub_self_of_mem_nonunits](../../../../CommutativeAlgebra/LocalRingBasicNamespaced.lean/declarations/isunit-one-sub-self-of-mem-nonunits.md) | 123 | `result-track:0f97cf654b4de5ef4e69f71d735bf12ce8c5847e937db2254cc515da7f29d05d` |
| 11 | `theorem` | [of_surjective'](../../../../CommutativeAlgebra/LocalRingBasicNamespaced.lean/declarations/of-surjective.md) | 126 | `result-track:956116b30f3b485379638ba01861069e845dd332fd2548fc6da26f7b71d5993c` |
| 12 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalRingBasicNamespaced.lean/declarations/instance.md) | 161 | `declaration-track:e964859e4612249c75077a8178aecf1ea55a3567b085bf83710455dc0e6daf60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa094c82f400e5f0c2c669c59f571ea824895810dcd9352965a19565251fe27e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variante4179cf73170b932ec390661819685a3f807c93d566bffe79846f72c79ce1c78.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variante4179cf73170b932ec390661819685a3f807c93d566bffe79846f72c79ce1c78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
