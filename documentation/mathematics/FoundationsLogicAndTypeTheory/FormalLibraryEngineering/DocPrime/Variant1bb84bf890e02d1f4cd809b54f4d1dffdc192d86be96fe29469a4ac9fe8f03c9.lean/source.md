# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DocPrime.Variant1bb84bf890e02d1f4cd809b54f4d1dffdc192d86be96fe29469a4ac9fe8f03c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86f26d1369df82c2757bfe15ea549afa749f6726` · SHA-256 `1bb84bf890e02d1f4cd809b54f4d1dffdc192d86be96fe29469a4ac9fe8f03c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Linter.DocPrime
import Mathlib.Tactic.Lemma

set_option linter.docPrime true

-- no warning on a primed-declaration with a doc-string containing `'`
/-- X' has a doc-string -/
def X' := 0

-- no warning on a declaration whose name contains a `'` *and does not end with it*
def X'X := 0

-- A list of universe names in the declaration is handled correctly, i.e. warns.
/--
warning: `Y'` is missing a doc-string, please add one.
Declarations whose name ends with a `'` are expected to contain an explanation for the presence of a `'` in their doc-string. This may consist of discussion of the difference relative to the unprimed version, or an explanation as to why no better naming scheme is possible.
note: this linter can be disabled with `set_option linter.docPrime false`
-/
#guard_msgs in
def Y'.{u} := ULift.{u} Nat

namespace X
/--
warning: `ABC.thm_no_doc1'` is missing a doc-string, please add one.
Declarations whose name ends with a `'` are expected to contain an explanation for the presence of a `'` in their doc-string. This may consist of discussion of the difference relative to the unprimed version, or an explanation as to why no better naming scheme is possible.
note: this linter can be disabled with `set_option linter.docPrime false`
-/
#guard_msgs in
theorem _root_.ABC.thm_no_doc1' : True := .intro

/--
warning: `X.thm_no_doc2'` is missing a doc-string, please add one.
Declarations whose name ends with a `'` are expected to contain an explanation for the presence of a `'` in their doc-string. This may consist of discussion of the difference relative to the unprimed version, or an explanation as to why no better naming scheme is possible.
note: this linter can be disabled with `set_option linter.docPrime false`
-/
#guard_msgs in
theorem thm_no_doc2' : True := .intro

end X

/--
warning: `thm_no_doc'` is missing a doc-string, please add one.
Declarations whose name ends with a `'` are expected to contain an explanation for the presence of a `'` in their doc-string. This may consist of discussion of the difference relative to the unprimed version, or an explanation as to why no better naming scheme is possible.
note: this linter can be disabled with `set_option linter.docPrime false`
-/
#guard_msgs in
theorem thm_no_doc' : True := .intro

/--
warning: `thm_with_attr_no_doc'` is missing a doc-string, please add one.
Declarations whose name ends with a `'` are expected to contain an explanation for the presence of a `'` in their doc-string. This may consist of discussion of the difference relative to the unprimed version, or an explanation as to why no better naming scheme is possible.
note: this linter can be disabled with `set_option linter.docPrime false`
-/
#guard_msgs in
@[simp]
theorem thm_with_attr_no_doc' : True := .intro

/--
warning: `inst_no_doc'` is missing a doc-string, please add one.
Declarations whose name ends with a `'` are expected to contain an explanation for the presence of a `'` in their doc-string. This may consist of discussion of the difference relative to the unprimed version, or an explanation as to why no better naming scheme is possible.
note: this linter can be disabled with `set_option linter.docPrime false`
-/
#guard_msgs in
instance inst_no_doc' : True := .intro

/--
warning: `abbrev_no_doc'` is missing a doc-string, please add one.
Declarations whose name ends with a `'` are expected to contain an explanation for the presence of a `'` in their doc-string. This may consist of discussion of the difference relative to the unprimed version, or an explanation as to why no better naming scheme is possible.
note: this linter can be disabled with `set_option linter.docPrime false`
-/
#guard_msgs in
abbrev abbrev_no_doc' : True := .intro

/--
warning: `def_no_doc'` is missing a doc-string, please add one.
Declarations whose name ends with a `'` are expected to contain an explanation for the presence of a `'` in their doc-string. This may consist of discussion of the difference relative to the unprimed version, or an explanation as to why no better naming scheme is possible.
note: this linter can be disabled with `set_option linter.docPrime false`
-/
#guard_msgs in
def def_no_doc' : True := .intro

-- Anonymous declarations in a primed namespace should not get flagged by the linter.
namespace Foo'

example : True := .intro
instance : True := .intro

end Foo'
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5c52564d718b466b17a3602fb8f31bc4ff527bcb02f4a1f9eb06b5f5cafab38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocPrime/Variant1bb84bf890e02d1f4cd809b54f4d1dffdc192d86be96fe29469a4ac9fe8f03c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
