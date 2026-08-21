def read_csv_lessons(line):
    """
    Αναλύει τα δεδομένα μιας γραμμής του αρχείου των μαθημάτων και επι-
    στρέφει μια κατάλληλα διαμορφωμένη λίστα.
    
    >>> read_csv_lessons('239,22/1/2023 08:30-10:30,[Α Β Γ],1ο ΠΛΗΡ,Όνομα,5')
    [239, '22/1/2023 08:30-10:30', '[Α Β Γ]', '1ο ΠΛΗΡ', 'Όνομα', 5] 
    """
    field=line.strip().split(',')
    field[0],field[5] = int(field[0]), int(field[5])
    return field

def read_csv_supervisors(line):
    '''
    Αναλύει τα δεδομένα μιας γραμμής του αρχείου των επιτηρητών και επι-
    στρέφει μια κατάλληλα διαμορφωμένη λίστα.
    
    >>> read_csv_supervisors('10,name,E-mail,5,[230 123 42]')
    [10, 'name', 'E-mail', 5, [230, 123, 42]]
    '''
    field=line.strip().split(',')
    field[0],field[3] = int(field[0]),int(field[3])
    field[4] = field[4][1:len(field[4])-1]
    field[4] = field[4].split(' ')
    field[4] = list_of_int(field[4])
    return field
    
def list_of_int(list):
    '''
    Μετατρέπει τα στοιχεία μιας λίστας από string σε ακέραιους αριθμούς.
    
    >>> list_of_int(['12','435','90','23','5'])
    [12, 435, 90, 23, 5]
    '''
    for i in range(len(list)):
        list[i] = int(list[i])
    return list
    
    
def exclusion(ls,lesson_id):
    '''
    Ελέγχει ποιά από τα αντικείμενα της λίστας του πρώτου ορίσματος περιλαμβάνουν στην ιδιότητα τους restriction(που είναι λίστα)
    το στοιχείο lesson_id και αν  επίσης η ιδιότητα τους no_lessons έχει τιμή διάφορη του μηδενός.Αν ισχύουν τα παραπάνω, το αντι-
    κείμενο προστίθεται στη λίστα newls, η οποία επιστρέφεται από τη συνάρτηση όταν τελειώσει η επανάληψη.
    '''
    newls=[]
    for sup in ls:
        if lesson_id not in sup.restrictions:
            if sup.no_lessons != 0:
                newls.append(sup)
    return newls
    

def max_string(ls):
    return len(max(ls,key = lambda x: len(x))) 
    
    
class ExaminatedLesson:
    def __init__(self,lesson_id,date,rooms,semester,teacher,no_supervisors):
        self.id_number = lesson_id
        self.date = date
        self.rooms = rooms
        self.semester = semester
        self.teacher = teacher
        self.no_supervisors = no_supervisors    
    
    def __str__(self):
        return f'Exam {self.id_number} with supervisors:'


class Supervisor:
    def __init__(self,sup_id,name,email,no_lessons,restrictions):
        self.sup_id = sup_id
        self.name = name
        self.email = email
        self.no_lessons = no_lessons
        self.restrictions = restrictions#Λίστα των περιορισμών του επόπτη
    
    def __str__(self):
        return f'{self.name} ( {self.email} )'
    
            
       
       
       
