from functions import *

#Άνοιγμα του αρχείου των μαθημάτων για ανάγνωση
lessons_file = open('../data/lessons.csv','r',encoding='utf-8')


lessons_count = 0
lessons_data = []#Λίστα με τα αντικείμενα που αναπαριστούν τα μαθήματα(αρχικοποίηση)
for lesson in lessons_file:
    if lessons_count == 0:
        header = lesson.strip()#Για να μην περιληφθεί ο χαρακτήρας αλλαγής γραμμής
    else:
        lesson = read_csv_lessons(lesson)#Μετατροπή της γραμμής του αρχείου σε λίστα
        lesson = ExaminatedLesson(lesson[0],lesson[1],lesson[2],lesson[3],lesson[4],lesson[5])#Δημιουργία αντικειμένου που αναπαριστά ένα μάθημα
        lessons_data.append(lesson)#Προσθήκη του μαθήματος στη λίστα των μαθημάτων
    lessons_count += 1
lessons_file.close()


#Άνοιγμα του αρχείου των εποπτών για ανάγνωση
sup_file = open('../data/supervisors.csv','r',encoding='utf-8')


sup_count = 0
supervisors_data = []#Λίστα με τα αντικείμενα που αναπαριστούν τους επόπτες(αρχικοποίηση)
for sup in sup_file:
    if sup_count == 0:
        header = sup.strip()
    else:
        sup = read_csv_supervisors(sup)#Μετατροπή της γραμμής του αρχείου σε λίστα
        sup = Supervisor(sup[0],sup[1],sup[2],sup[3],sup[4])#Δημιουργία αντικειμένου που αναπαριστά έναν επόπτη
        supervisors_data.append(sup)#Προσθήκη του επόπτη στη λίστα των εποπτών
    sup_count += 1
sup_file.close()




assignments = []#Λίστα αποτελούμενη από τις λίστες που περιέχουν τα στοιχεία των εποπτών κάθε μαθήματος που θα εμφανιστούν στην έξοδο(αρχικοποίηση)
for lesson in lessons_data:#Σάρωση όλων των μαθημάτων
    lesson_assignments = []#αρχικοποίηση της λίστας με τις αναθέσεις για το τρέχον μάθημα
    available_sup = exclusion(supervisors_data,lesson.id_number)#Διαθέσιμοι επόπτες για κάθε μάθημα(Το Id του μαθήματος δεν είναι στους περιορισμούς τους και μπορούν να εποπτεύσουν κι άλλο μάθημα)
    sup_number = 0#Τρέχων αριθμός των εποπτών που έχουν ανατεθεί στο συγκεκριμένο μάθημα         
    while sup_number < lesson.no_supervisors:#Επανάληψη των εντολών του βρόχου έως ότου συμπληρωθεί ο απαιτούμενος αριθμός εποπτών ή δεν υπάρχουν άλλοι διαθέσιμοι επόπτες 
        if len(available_sup) != 0:
            selection = max(available_sup,key= lambda x: x.no_lessons)#Επιλογή του διαθέσιμου επόπτη με τον μεγαλύτερο απομένοντα αριθμό εποπτειών
            selection.no_lessons -= 1
            lesson_assignments.append(str(selection))
            available_sup.remove(selection)#Αφαίρεση του επιλεγμένου επόπτη από την προσωρινή λίστα available_sup, για να μην επιλεγεί πάνω από μία φορά στο ίδιο μάθημα
            sup_number += 1
        else:
            break
    assignments.append(lesson_assignments)

   
#Εγγραφή των αναθέσεων εποπτειών στο αρχείο python_solution.txt
#Για την εγγραφή των καλούνται οι συναρτήσεις str που καλούν τις ειδικές μεθόδους __str__ των αντικειμένων που ορίζονται στις κλάσεις
output = open('../program output.txt','w',encoding='utf-8')#Άνοιγμα του αρχείου των αναθέσεων για εγγραφή των εποπτειών για το κάθε μάθημα
i = 0
for lesson in lessons_data :#Σάρωση των μαθημάτων και (με τη χρήση του δείκτη i) της λίστας των αναθέσεων
    output.write(f"{str(lesson)}\n")#Εγγραφή του μαθήματος στο οποίο αντιστοιχούν οι επόπτες που πρόκειται να εγγραφούν στο αρχείο 
    line_max = max_string(assignments[i])
    output.write((line_max + 3) * '-' + '\n')
    for sup in assignments[i]:#Σάρωση της λίστας των αναθέσεων για το συγκεκριμένο μάθημα
        output.write(f"|{sup}{(line_max - len(sup)) * ' '} | \n")#Εγγραφή των στοιχείων του κάθε επόπτη στο αρχείο των αναθέσεων
    output.write((line_max + 3) * '-' + '\n')
    if len(assignments[i]) < lesson.no_supervisors:#Έλεγχος αν δεν έχει ανατεθεί ο απαιτούμενος αριθμός εποπτών και εμφάνιση του αντίστοιχου μηνύματος 
        output.write(f"ERROR sups: {lesson.no_supervisors} but assigned {len(assignments[i])}\n")
    i+=1#Ενημέρωση του δείκτη της λίστας assignments      
    if lesson == lessons_data[-1]:#Για να μην αλλάξει γραμμή μετά την ολοκλήρωση της εγγραφής των εποπτών του τελευταίου μαθήματος
        break
    output.write('\n')

output.close() 






            















        