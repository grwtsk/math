-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LookupFibrationEquivalence.Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LookupFibrationEquivalence.Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Compression/Rewrite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Compression.Lookup


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LookupFibrationEquivalence.Variante8fb51c3e675fe10aab75b30014536e4fb4f38ccfb5b3cc8e74bbdf80731c8f1

set_option autoImplicit false

namespace Think.Compression.Syntax

def transportIndex {α : Type}
    {source target : CompressedString α}
    (hdecode : decode source = decode target)
    (i : Fin (decode source).length) :
    Fin (decode target).length :=
  { val := i.val
    isLt := by
      have hlen :
          (decode source).length = (decode target).length :=
        congrArg List.length hdecode
      rw [← hlen]
      exact i.isLt }

structure LookupFibrationEquivalence {α : Type}
    (source target : CompressedString α) where
  decode_eq : decode source = decode target
  path_forward :
    ∀ i : Fin (decode source).length,
      LookupPathAt source i →
        LookupPathAt target (transportIndex decode_eq i)
  path_backward :
    ∀ i : Fin (decode source).length,
      LookupPathAt target (transportIndex decode_eq i) →
        LookupPathAt source i
  forward_backward :
    ∀ (i : Fin (decode source).length) (path : LookupPathAt source i),
      path_backward i (path_forward i path) = path
  backward_forward :
    ∀ (i : Fin (decode source).length)
      (path : LookupPathAt target (transportIndex decode_eq i)),
      path_forward i (path_backward i path) = path

def PreservesSemanticsAndLookup {α : Type}
    (source target : CompressedString α) : Prop :=
  Nonempty (LookupFibrationEquivalence source target)

def preservesOfDecodeEq {α : Type}
    {source target : CompressedString α}
    (hdecode : decode source = decode target) :
    LookupFibrationEquivalence source target :=
  { decode_eq := hdecode
    path_forward := by
      intro i _path
      exact canonicalLookupPathAt target (transportIndex hdecode i)
    path_backward := by
      intro i _path
      exact canonicalLookupPathAt source i
    forward_backward := by
      intro i path
      exact Subsingleton.elim _ _
    backward_forward := by
      intro i path
      exact Subsingleton.elim _ _ }

theorem preserves_semantics_and_lookup_refl {α : Type}
    (s : CompressedString α) :
    PreservesSemanticsAndLookup s s :=
  ⟨preservesOfDecodeEq rfl⟩

theorem preserves_semantics_and_lookup_trans {α : Type}
    {source middle target : CompressedString α}
    (left : PreservesSemanticsAndLookup source middle)
    (right : PreservesSemanticsAndLookup middle target) :
    PreservesSemanticsAndLookup source target := by
  rcases left with ⟨leftEquiv⟩
  rcases right with ⟨rightEquiv⟩
  exact ⟨preservesOfDecodeEq
    (leftEquiv.decode_eq.trans rightEquiv.decode_eq)⟩

theorem preserves_comp {α : Type}
    {source middle target : CompressedString α}
    (left : PreservesSemanticsAndLookup source middle)
    (right : PreservesSemanticsAndLookup middle target) :
    PreservesSemanticsAndLookup source target :=
  preserves_semantics_and_lookup_trans left right

inductive DupSide : Type
  | left
  | right
deriving DecidableEq, Repr

structure MacroRule (α : Type) where
  output : List (CompressedString α) → List α
  admissible : List (CompressedString α) → Prop
  MacroLookupPath : List (CompressedString α) → Type
  followMacroPath :
    (parts : List (CompressedString α)) → MacroLookupPath parts → Option α
  route :
    (parts : List (CompressedString α)) →
      admissible parts →
      Fin (output parts).length →
      MacroLookupPath parts
  route_sound :
    ∀ (parts : List (CompressedString α)) (h : admissible parts)
      (i : Fin (output parts).length),
      followMacroPath parts (route parts h i) =
        listGet? (output parts) i.val
  route_unique :
    ∀ (parts : List (CompressedString α)) (h : admissible parts)
      (i : Fin (output parts).length) (path : MacroLookupPath parts),
      followMacroPath parts path = listGet? (output parts) i.val →
        path = route parts h i

def macroRuleHasDeterministicRouting {α : Type}
    (_rule : MacroRule α) : Prop :=
  True

theorem macro_rule_route_sound {α : Type}
    (rule : MacroRule α)
    (parts : List (CompressedString α))
    (h : rule.admissible parts)
    (i : Fin (rule.output parts).length) :
    rule.followMacroPath parts (rule.route parts h i) =
      listGet? (rule.output parts) i.val :=
  rule.route_sound parts h i

theorem normalize_preserves_semantics_and_lookup {α : Type}
    (s : CompressedString α) :
    PreservesSemanticsAndLookup s (normalize s) :=
  ⟨preservesOfDecodeEq (normalize_sound s).symm⟩

inductive RewriteStep {α : Type} :
    CompressedString α → CompressedString α → Prop
  | refl (s : CompressedString α) :
      RewriteStep s s
  | normalize (s : CompressedString α) :
      RewriteStep s (normalize s)

theorem rewrite_preserves_semantics_and_lookup {α : Type}
    {source target : CompressedString α}
    (step : RewriteStep source target) :
    PreservesSemanticsAndLookup source target := by
  cases step
  · exact preserves_semantics_and_lookup_refl source
  · exact normalize_preserves_semantics_and_lookup source

theorem rewrite_preserves {α : Type}
    {source target : CompressedString α}
    (step : RewriteStep source target) :
    PreservesSemanticsAndLookup source target :=
  rewrite_preserves_semantics_and_lookup step

end Think.Compression.Syntax
