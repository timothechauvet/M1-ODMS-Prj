def create_data():
    """ Stores the data require for the problem"""
    data = {}
    data['delivery_time'] = [
        #[DEPOT,C1,C2,C3,C4,C5,C6,C7]
        [0,9,5,'*','*','*',5,6], #DEPOT
        [9,0,6,7,'*','*','*','*'], #C1
        [5,6,0,'*','*','*','*','*'], #C2
        ['*',7,'*',0,11,17,'*','*'], #C3
        ['*','*','*',11,0,8,'*','*'], #C4
        ['*','*','*',17,8,0,'*','*'], #C5
        [5,'*','*','*','*','*',0,'*'], #C6
        [6,'*','*','*','*','*','*',0], #C7
    ]
    data['data_penalty'] = [
        #(Due date, tardiveness penalty, earliness penalty)
        #DEPOT
        (23,7,3), #C1
        (15,5,2), #C2
        (20,2,2), #C3
        (33,7,1), #C4
        (35,3,3), #C5
        (17,3,1), #C6
        (10,5,2), #C7
    ]
    return data

def main():
    data = create_data()
    print(data)
    print(data['delivery_time'])
    print(data['data_penalty'])


if __name__ == '__main__':
    main()